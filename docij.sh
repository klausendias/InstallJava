#!/bin/sh

# iCheckInstallJava Checks and Installs a version of Java specified by the user.
# Copyright (C) 2018  Matthew Goldsmith

# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.

# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.


#Checking Version of Java
if type -p java; then
    echo found java executable in PATH
    _java=java
elif [[ -n "$JAVA_HOME" ]] && [[ -x "$JAVA_HOME/bin/java" ]];  then
    echo found java executable in JAVA_HOME     
    _java="$JAVA_HOME/bin/java"
else
    echo "no java"
fi

if [[ "$_java" ]]; then
    version=$("$_java" -version 2>&1 | awk -F '"' '/version/ {print $2}')
    echo version "$version"
    
    if [[ "$version" > "1.8" ]] && [[ "$version" < "1.9" ]]; then
         echo Your Version of Java is more than 1.8.0 but less than 1.9.0
	 echo No need to Upgrade... Skipping Installation Step
         echo Java 8 has already been installed.
	 echo INSTALLED.
	 #Running Application
	 #echo Running Application... 
	 #./run.sh
    elif [[ "$version" > "1.9" ]]; then        
         echo Your Version of Java is greater than 1.9.0
         
	 #Running Application
	 #echo Running Application...
	 #./run.sh
    else 
 	 echo Your Version of Java is less than 1.8.0
	 echo Upgrading to Java 8...

	 #With Homebrew we will install Java 8
	 /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
	 brew update
	 brew tap caskroom/cask
	 brew cask install caskroom/versions/java8

         echo INSTALLED.
	 #Running Application
	 #echo Running Application...
	 #./run.sh
    fi
fi

