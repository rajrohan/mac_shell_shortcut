# Executing Shell Scripts from the OS X Dock with multiple approach.
### 1. Try with Automator
You could create a Automator workflow with a single step - "Run Shell Script"

Then File > Save As, and change the File Format to "Application". When you open the application, it will run the Shell Script step, executing the command, exiting after it completes.

The benefit to this is it's really simple to do, and you can very easily get user input (say, selecting a bunch of files), then pass it to the input of the shell script (either to stdin, or as arguments).

(Automator is in your /Applications folder!)

### 2. Using Terminal only
Create your shell script.
Make your shell script executable:
```
chmod +x jupyter_shell.sh
```
Rename your script to have a .app suffix:
```
mv jupyter_shell.sh jupyter_shell.app
```
Drag the script to the OSX dock. And rename your script back to a .sh suffix:
```
mv jupyter_shell.app jupyter_shell.sh
```
Right-click the file in Finder, and click the "Get Info" option.
At the bottom of the window, set the shell script to open with the terminal.
Also you can drag and drop the icon.
Now when you click on the script in the dock, A terminal window will pop up and execute your script.

### 3. With appify Script
Get the script "appify" from https://gist.github.com/mathiasbynens/674099
```
source ./appify jupyter_shell.sh
```
A Mac App will be created named "jupyter_shell.app"

Right-click (Crl-Click) on the app. Select "Get Info"

Grab the preferred Jupyter App Icon and drop it on top of the icon shown on the top-left of the opened Info window.

Available icons for notebook: jupyter_icon.icns and lab: jupyterlab_icon.icns


Reference:
### https://stackoverflow.com/questions/281372/executing-shell-scripts-from-the-os-x-dock
