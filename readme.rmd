#link
#https://stackoverflow.com/questions/281372/executing-shell-scripts-from-the-os-x-dock
1. Try with automator
You could create a Automator workflow with a single step - "Run Shell Script"

Then File > Save As, and change the File Format to "Application". When you open the application, it will run the Shell Script step, executing the command, exiting after it completes.

The benefit to this is it's really simple to do, and you can very easily get user input (say, selecting a bunch of files), then pass it to the input of the shell script (either to stdin, or as arguments).

(Automator is in your /Applications folder!)

2.
#Create your shell script.
#Make your shell script executable:

chmod +x your-shell-script.sh
#Rename your script to have a .app suffix:

mv your-shell-script.sh your-shell-script.app
#Drag the script to the OSX dock.
#Rename your script back to a .sh suffix:

mv your-shell-script.app your-shell-script.sh
#Right-click the file in Finder, and click the "Get Info" option.
#At the bottom of the window, set the shell script to open with the terminal.
#Now when you click on the script in the dock, A terminal window will pop up and execute your script.

3. With appify
Get the script "appify" from https://gist.github.com/mathiasbynens/674099
source ./appify jupylab.sh
A Mac App is created named "jupylab.app"
Right-click (Crl-Click) on the app. Select "Get Info"
Grab the preferred Jupyter App Icon and drop it on top of the icon shown on the top-left of the opened Info window.
Available icons for notebook: jupyter_icon.icns and lab: jupyterlab_icon.icns