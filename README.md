# master-alert
# master-alert

Play a sound everytime you push some code to a git master branch. Besides the outreagous joy this adds to your normal development rutine, it helps notifying other developers in the room that maybe they need to pull some code.

It works in Windows.

## Installation

1) Clone masterpushalarm repo.
```
git clone https://github.com/earlyriser/master-alert.git
```
2) Go to the new directory created.
```
cd master-alert
```
3) Create hooks in the repo ( like /path/to/any/git/repository ) where you are working. If you are running this on Windows, you'll need cygwin to run the next command... or just run it inside Git Bash
```
./install.sh /c/projects/myrepo
```



## Attributions

- lukasmartinelli (Github) who wroted push-it, where I took most of the code. https://github.com/lukasmartinelli/push-it
- shawshank73 (Freesound) who created the sound. https://www.freesound.org/people/shawshank73/sounds/100884/
