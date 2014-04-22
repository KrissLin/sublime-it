<h1><img src="sublime-it.png?raw=true" style="display:inline;vertical-align:middle"> Sublime It!</h1>

I've looked and looked for **a Sublime action for Finder** but nothing seemed to work as I'd prefer so I decided to roll my own. **Sublime It!** is a very simple Automator app that makes use of the `subl` executable (bundled with *Sublime*) to launch the current *Finder* selection in *Sublime*.

It works as you'd expect for multiple selections, files & folders, white space in paths, etc. When launched, it will open highlighted files in the topmost window of Sublime (or launch a new one if Sublime isn't running). As a bonus, you can hold down `shift` while clicking the action, and this will cause the current selection to open in a brand new Sublime window. This feature makes use of the excellent `checkModifierKeys` binary by Stefan Klieme (StefanK).

## Installation Instructions

Download, unzip and copy `Sublime It!.app` to your applications folder. `⌘⌥+drag` the app to your finder toolbar.

NB First time you run the action, it may not work due to the usual OSX security dialog about the App being downloaded and whether you want to run it. Just hit OK and try again - it will work from now on :)
