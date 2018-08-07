# iCheckInstallJava

## Mac OS X Installation
From your command-line terminal. Input and enter the following:
```bash
$ ./install.sh
```
## How it works

First of all, after entering the command noted above into your terminal. YOU ARE DONE! 

Lets talk about how the script installs Java 8:

1. This script first checks the version of Java you currently have on your machine.

2. Next the script then determines whether or not it needs Java 8.

3. If your machine has an earlier version it will install Java 8 using [Homebrew](https://brew.sh/).

4. At the end of the installation it will note that the installation was a success.

5. If your machine has anything greater than Java 8 and less than 9 it will display a success.

6. If your machine has a more recent version such as Java 9 or above it will not do anything.

## Testing
This has been successfully tested on a few different MacBooks and ran without error.
This script has also been tested on a few different university computers (Macs) and without error.

This has not been tested on Linux or Windows.

## Quality Engineering
If you do experience difficulty with the installation script. Please email me at mgoldsmith06@gmail.com

## Collaboration
Feel free to email me at mgoldsmith06@gmail.com 
