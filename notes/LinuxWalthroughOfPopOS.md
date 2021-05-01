## Convert to desired resolution in linux(for i3lock)

convert -scale 1920x1080 unleash-potential.png unleash-potential-scaled-lockscreen.png
// To get resolution for current desktop, use below command: 

xdpyinfo | grep 'dimensions:'

## Convert webp to png

src: https://winaero.com/convert-webp-png-linux/

ffmpeg -i file.webp ouputfile.png

//or use

dwebp file.webp -o file.png
// you must have installed: apt install webp

## convert png to webp

cwebp file.png -o file.webp
// you must have installed: apt install webp

## Installed calc, hence we can use `calc` from cli to do calculations
src: https://www.maketecheasier.com/use-linux-terminal-as-calculator/

## insatll sxhkd

```
sudo apt install sxhkd
sxhkd
```

src: https://github.com/baskerville/sxhkd

## Started Using copyq as clipboard manager

Started using `Copyq` as Cclipboard manager and assigned ``ctrl+shift+q``, also ``q`` is more relatable to the name ``copyq``  for global shortcut binding to show/hide the copyq, yikes!!!

## Move windows across same group, multiple groups, and shrink/expand selection

::alt+shift+right/left : To expand/shrink selection
::ctrl+alt+shift+right/left: Move current tab to left/right like as you do in chrome/firefox.
::(Inbuild though)ctrk+k left/right/up/down: Move current to different groups of tabs, yikes!

## Focus windows using wmctrl

wmctrl -l #shows list of windows with window id, window title, etc.

wmctrl -a <window-id> -i #This will focus to the desirable window, but if thats a floating window i.e., "Always on visible workspace" then wmctrl just switch to the desktop in which it was opened at first. :( And that breaks what i want it to do for emoji-picker, time-spend to fix this: 8hrs.

Get list of currently opened windows using this tool as https://unix.stackexchange.com/a/635740 and its pretty.

## To run any program or a series of command at user startup:

Just put `command_shit` in the end of your `~/.profile` file, and it works out of the box, yikes!
Do remember to put & in the end of a command that is supposed to be non-terminating process command, else your login process will be disturbed coz linux waits for .profile script to finish executing and conitue the login essential processes thereby.


## Run 🏇︎ 🏇︎script on user login(for setting `Always on Visible Workspace` for emoji-picker)

src: https://unix.stackexchange.com/a/56088

my notes: Simply make an executable script say `myscript1.sh` (with #!/bin/bash shebang at file top) and copy it to ` /etc/profile.d` directory and you are done.

## Minimise window?

Added shortcut win+x (in keyboard shorcuts in pop os settings) to hide active window, yikes!!


## Enable auto rename tag(for html), now vscode has builtin support for this

enable it via searching for "editor.linkedEditing" in settings, and enable it.

## Install workrave from pop shop

Yikes!!

## insatlling kvm in popos 

sudo apt install qemu-kvm

Now to install a gui to handle kvm, you must install "Virtual Machine Manager" from the pop shop or install it via below command - 
sudo apt install virt-manager

Also, I had problems with directly opening virtd-manager via launcher or via cli virt-manager, but this problem is solved by opening it via - `sudo virt-manager`, yikes!
* A simple fix for this could be like, add an alias to your .bashrc file, i.e., 
alias virt-manager='sudo virt-manager'
, yikes!!, and problem is solved for ever, and now your qemu must be connected to virt-manager(UI for kvm, yikes!).
src: https://askubuntu.com/a/731709/702911

## Firefox extensions

Tip: Ctrl+shift+a to open addons in firefox!

* Extension: SuprHotKeys by Gaurav Kumar

Select any text and use ctrl+shift+space to search for it using google, yikes!!.

* Extension: Move Tab Hotkeys by Jonathon Merz

	Default Hotkeys:

	    Alt+Shift+Left: Move tab one to the left, wrapping to the right end if the tab is currently in the first position
	    Alt+Shift+Right: Move tab one to the right, wrapping to the left end if the tab is currently in the last position
	    Alt+Shift+0: Move tab to the start of the tab bar
	    Alt+Shift+9: Move tab to the end of the tab bar

* Extension: Pin Unpin Tab by Jayesh Bhoot;; src: https://addons.mozilla.org/en-US/firefox/addon/pinunpin-tab/
Note: this extension already comes up bundled with alt+p keyboard shortcut, you can configure it to some other shortcut too. Remember to set different hotkey, press ctrl+shift+a to open addons, and click the gears button in top right, and then choose "Manage Extension Shortcuts".

## using snowpack

`npx create-snowpack-app my-react-app --template @snowpack/app-template-react`


## You must set emmet's setting for:

`  "emmet.showExpandedAbbreviation": "inMarkupAndStylesheetFilesOnly"`
as, this will not show emmet abbreviation in intellisense, and also you should set a hotkey for emmet exapansion as `ctrl+e`, yikes!s


## installation guide from yarn for ubuntu using ppa thing:

https://classic.yarnpkg.com/en/docs/install/#debian-stable

## installed pip3 via - sudo apt install python-pip
pip3 --version

## using chown

chown array:array file/folder or .
chown -R array:array file/folder or .
:FYI - The signature is user:group

## git unstage: use binary `gu` from now onwards, it'll unstage everything even if you are in a nested folder of the git repo.

## git diff HEAD to diff between the `last commit`(i.e., HEAD) and the index(staged area).

Read this stackoverflow answer to learn about 

## change default branch name to `main` made when we do `git init` by below command

```
git config --global init.defaultBranch main
#This makes chagnes to .gitconfig file in the ~ directory.
```
src: https://stackoverflow.com/a/42871621


## my browser is getting bad font: i.e., Arial, "Helvetica Neue", Helvetica, sans-serif
and specifically its "Helvetica Neue"


:: Increased the delay of double click for popos ,now doble click works pretty comfortably in nautilus app.

::filter today modified file/folders:
ls -al | grep "Mar 29"


:: install anbox(amazing android emulator made for linux):
sudo snap install --devmode --beta anbox
refer official site though: https://docs.anbox.io/userguide/install.html
#note: installv via snap didn't work :(
#note: this thing helped though: https://www.youtube.com/watch?v=UDFnebCd50Q
#install apps simply via:
adb install path_to_myapp.apk
src: https://docs.anbox.io/userguide/install_apps.html


install playstore to anbox:
source:
https://www.linuxuprising.com/2018/07/anbox-how-to-install-google-play-store.html
https://github.com/geeks-r-us/anbox-playstore-installer/

--when opening playstore(after giving all permission to playstore, at the opening app) i used below command to be able to get the login screen in playstore, yikes!! =>
sudo /snap/anbox/current/bin/anbox-bridge.sh start

=---note- my jio-app installed via apk didn't work, even when i installed jio tv from playstore, it didn't work: so i gave it all permission from "Settings>apps> jio tv", not it behaves superb!!


## Using npm while doing 
```
npx create-react-app my-app --use-npm
```

src: https://stackoverflow.com/a/61938578

Move multiple folders files to a destination directory using -t flag for mv

E.g., mv -t target/ file1 file2 folder1 folder2

*Notice: You shouldn't use `/` in the end for source folders, othersie the contents insisde that will be moved.

src: https://askubuntu.com/a/217067

## Added ctrl+e to expand emmet in vscode shortcuts, yikes!!

## vlc

1. ctrl+p, choose "simple" in preferences, and tick "Start in minimal view mode", yikes!!
2. ctrl+p, choose "simple" in preferences, and untick "Resize interface to video size", yikes!!

## Make the screencast record more than 30s !!

Just execute the command as suggested in the url @ https://askubuntu.com/a/996955 to extend the max second to 600 secs, i.e., 10mins.

```bash
gsettings set org.gnome.settings-daemon.plugins.media-keys max-screencast-length 600
```
## mongodb MONGO_POOLSIZE flag in mongodb nodejs driver

Default value is 5.

src: https://stackoverflow.com/a/52347027
src2: https://medium.com/@kyle_martin/mongodb-in-production-how-connection-pool-size-can-bottleneck-application-scale-439c6e5a8424
src3: poolsize managing if you are using mongoosejs: https://mongoosejs.com/docs/connections.html#connection_pools (default value is 5 though)
wild: increasing max no. of connections for mongodb: https://stackoverflow.com/questions/16713415/mongodb-increasing-max-connections-in-mongodb

## Make your vim's backspace work as by default backspace use compatibility mode as mentioned in link as mention in [here](https://askubuntu.com/a/296396)

So, the solution is [there too](https://askubuntu.com/a/370458) that too, yikes!!
FYI: vi ~/.vimrc, and add below two lines:

```
set nocompatible
set backspace=2
```
Now, everything works fine with vim as I expect, yo!!

## Disable vscode upate notification: https://stackoverflow.com/a/43780004 , yikes!!

So I have check updates to manual i.e., update when i say update!!, yo!

## Article I follwed: https://medium.com/founding-ithaka/setting-up-and-connecting-to-a-remote-mongodb-database-5df754a4da89

{Beware do not use user authentication, i.e., do not add users and do not uncomment security in config file, and use db without any authentication}.


* a almost same article : https://medium.com/@Hardy2151/how-to-connect-to-your-remote-mongodb-server-68725a8e53f

* a latest article on doing same thing: https://www.digitalocean.com/community/tutorials/how-to-configure-remote-access-for-mongodb-on-ubuntu-20-04

sudo mongo "mongodb://124.253.64.111:27017"

### Make your mongod's settings via by executing:

```
sudo vi /etc/mongod.conf
```

and  make setttings like below:
 
```toml
net:
  port: 27017
  bindIp: 0.0.0.0
```

The answer that helped: https://stackoverflow.com/a/35063229
  
```bash
ps -aux | grep mongod
# ^^^^ to get the pid and then use
sudo kill pid
# ^^^ to actually kill coz sudo `systemctl restart mongod` or `sudo systemctl stop mongod` don't work actually for my case.

mongod --fork --logpath /var/log/mongod.log

sudo lsof -i | grep mongod #Tells the mongod port running on...
sudo iptables -L
sudo service mongod restart
sudo vi /etc/mongod.conf
sudo systemctl restart mongod

- nextjs and netlify latest article, yikes!!: https://www.netlify.com/blog/2021/03/16/try-the-new-essential-next.js-plugin-now-with-auto-install/
	- link inside that article to make nextjs site instantly with backend api's working too(if you need to enable cors too you should have a next.confi.js file similar to: https://github.com/sahilrajput03/next-netlify-starter/blob/main/next.config.js )

Running slow as see output from `free -h`

[src](https://unix.stackexchange.com/questions/415814/memory-runs-full-over-time-high-buffer-cache-usage-low-available-memory).
```
#This will probably remove all your caches from the os!(won't hurn in any way though)
sudo -i
free -h && sync && echo 3 > /proc/sys/vm/drop_caches && free -h
```

!!!!!!!!!!!!!>>>>>>>>>>>..FIX the vim backaspace shit now!!!!!!!!!!!1

## Github workflow enabling/disabling manually from github:

https://docs.github.com/en/actions/managing-workflow-runs/disabling-and-enabling-a-workflow

### Important: If you face password prompting duing git push??

Probaly the reason is you have cloned the repo from github, and thats why it needs you to enter password everytime.. So, how to fix it..?
Just do:
```
git remote -v 		#Show remotes.
git remote rm origin 	#Remove origin remote.
hub create 		#Caution folder name must be same as repository name, otherwise you need something like `hub create repo_name` inspite of just `hub create`.
```

Now after readding the remote, it'll not ask for any password on each push request, yikes!!

### linux

- If you type command alias in your cli, it'll show you all the aliases you have in `.bashrc` or the `config.fish` file corresponding to the shell you are using.

- Using cron, use `crontab -e` to edit the crontab file. You are only asked the first time for the editor to use to edit the file.(Though you can manually change the editor later on using command `select-editor`, yikes!!
	Use https://crontab.guru/every-1-minute to make some cool cron patterns.
	```bash
	#Both of below ways work equally good in crontab file, (get it via `crontab -e`) !!!
	#* * * * * /home/array/my_bin/req
	#* * * * * ~/my_bin/re
	```
- Running cron jobs for time less than one minute: visit => https://stackoverflow.com/questions/1034243/how-to-get-a-unix-script-to-run-every-15-seconds/1034304#1034304

## ..??
https://t.me/fullstackcourse/114099### Heroku apps sleep ??

Read about it here(awesomely explained, PLEASE READ THIS IN WHOLE TO UNDERSTAND THE HEROKU SERVICES..): https://devcenter.heroku.com/articles/free-dyno-hours#dyno-sleeping
tl;dr;
If an app has a free web dyno, and that dyno receives no web traffic in a 30-minute period, it will sleep. In addition to the web dyno sleeping, the worker dyno (if present) will also sleep.

### Error: a step cannot have both the `uses` and `run` keys, yikes!!!! (learn this is rule in github actions).


### Install act, a local workflow tester, yikes!

```
sudo curl https://raw.githubusercontent.com/nektos/act/master/install.sh | sudo bash
# For available comaands from act cli, visit: https://github.com/nektos/act#commands
```

## Install docker, yikes

```bash
#Date: 15March, 2021.
#Below commands are prepared by me from: https://docs.docker.com/engine/install/ubuntu/
#*****NOTE YOU MUST EXECUTE BELOW SCRIPT IN A BASH SHELL, SO IF YOU ARE USING FISH AS DEFAULT SHELL THEN YOU CAN SIMPLY GET BASH SHELL VIA TYPING `BASH` IN FISH SHELL, YIKES!!*******
sudo apt-get update

sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg \
    lsb-release

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg

echo \
  "deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
  
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io

# Verify that docker is installed using below command.
sudo docker run hello-world
```

*To install: follow instructions here: https://docs.docker.com/engine/install/ubuntu/#uninstall-old-versions

## Install tree for printing folder structure to the commandline

```bash
sudo apt install tree
tree -I node_modules #tree command by default doesn't print hidden files and folder(i.e., files prefixed with . in filename).
tree -aI '.git|node_modules' #This is best. (now aliased to `trees` in my_bin).
# src: https://zaiste.net/posts/tree-ignore-directories-patterns/
```

## Install heroku in ubuntu 16+ with below command

`sudo snap install --classic heroku`

#### What font to use for VSCODE and GNOME TERMINAL so that it supports every symbol and everything looks cool?

**Short answer**: Use **Fira Code**, see **I**nstructions, **D**ownload link and **I**nstallation process for both vscode and linux (you got to set **Fira Code Regular** or other fira font variant in that repo too) @ [here](https://github.com/tonsky/FiraCode) for both Yikes! 

It works amazing for vscode and amazing for gnome terminal as well.

### How can I run a command which will survive terminal close?

stackoverflow's answer [here](https://unix.stackexchange.com/a/4006). 

My notes:

```bash
$ nohup myProgram &

### or use below

$ myProgram &
$ disown
```



### For`sudo shutdow now` and `sudo reboot` help visit the gits you made @gist.

Nothing to discuss here now!

### ssh thing

- Know about passing password as argument usign `sshpass`, install it via `sudo apt install sshpass`. Know more [here](https://serverfault.com/a/946191).

- Install and run ssh on some pc by following this article [here](https://dev.to/zduey/how-to-set-up-an-ssh-server-on-a-home-computer).

- Now you can ssh a pc using

  ```bash
  sshpass -p 'target-pass' ssh sahil@192.168.18.17 #Where taget-pass is the password of target machine, yikes!!
  ```

  

***

- You can get path of global `node_modules` folder for npm in linux via: `npm root -g` and **Ouputs:** `/usr/lib/node_modules`. src: [here](https://stackoverflow.com/questions/24830586/where-do-global-npm-packages-get-installed-on-ubuntu). Also note that, `npm get prefix` **Ouputs**: `/usr` though.

- Set NODE_PATH in linux as `/usr/lib/node_modules/`-

  ```bash
  # in your ~/my_bin/my_bashrc_sources/source1 file add below line to make node detect globally installed modules, yo!!
  export NODE_PATH=/usr/lib/node_modules #This works yikes!!
  ```

  

  ```bash
  type node
  type npm
  ```

### For linux systems by default npm uses /usr directory to install any global packages

You can verify that via:

```bash
sudo npm install -g markdown-styles
type generate-dm #Outpus: /usr/bin/generate-md
```



### To add a path to the path variable, simply do this..

```bash
$ sudo gedit /etc/environment
# and add the path there, and logout and login from there, otherwise if you don't want to feel the pain of login and logout, you can simply use the export thig as suggested by everyone one internet though., yikes!!
```



### Using snippy

Source: snippy is made using dmenu(a gui maker for anything in linux), visit a short tutorial in linux for dmenu, download from [here](https://tools.suckless.org/dmenu/) . Visit awesome docs for dmenu [here](https://dmenu.readthedocs.io/en/latest/).

For the source code of snippy get it [here](https://github.com/gotbletu/shownotes/blob/master/snippy.sh). For snippy tutorial demo [here](https://youtu.be/90xoathBYfk). Also try making something out of dmenu's info @ arch's linux @ [here](https://wiki.archlinux.org/index.php/dmenu).

* Place your snippet files under ~/.snippy folder and you can organise them into different folders too, yikes!!

For subsitution of Auto hotkey(python's implementation though) and linux, visit [here](https://unix.stackexchange.com/questions/165124/autohotkey-equivalent#:~:text=There's%20a%20port%20of%20AutoHotKey,unix%20systems%20is%20the%20shell.), and [here](https://github.com/autokey/autokey).



### Installing snap for cacher - a snippet manager tool

```bash
$ sudo apt update
$ sudo apt install snapd
# src:https://snapcraft.io/docs/installing-snap-on-pop
# test if its installed correctly via below commands:
$ sudo snap install hello-world
hello-world 6.3 from Canonical✓ installed
$ hello-world
Hello World!
```

### Install cacher only after installing snap on Pop OS!

source : https://snapcraft.io/cacher

another article on snippet manager: https://dev.to/tomlangdon/5-code-snippet-managers-that-will-change-the-way-you-write-code-10ml

anthoer one: https://www.slant.co/topics/7247/~code-snippets-manager#10

```bash
sudo snap install cacher
```



### Amazing map capslock key to esc and use shift+caps to general caplock toggling behaviour

```bash
sudo apt install gnome-tweak-tool
sudo apt install xcape
```

Then simply go to launcher and type **Tweaks** , then navigate to **Keyboard and Mouse**, then choose **Additional Layout Options** and then choose **Capslock Behaviour** and select **Make unmodified Caps Lock an additional Esc, but Shift + Caps Lock behaves like regular Caps Lock**, yikes, and now it works great!!, yikes!!

### omf theme

```bash
omf install agnoster #Yikes!!
omf install emoji-powerline
omf install fishbone
#Use omf remove <theme-name> # To remove any current theme, yikes.
```

source: [link for emoji-powerline](https://github.com/oh-my-fish/oh-my-fish/blob/master/docs/Themes.md#emoji-powerline)

source: [link for agnoster](https://github.com/oh-my-fish/oh-my-fish/blob/master/docs/Themes.md#agnoster)

source: [link for fishbone](https://github.com/oh-my-fish/oh-my-fish/blob/master/docs/Themes.md#fishbone)



### Installed "powerline fonts" (required for omf theme to work!)

Source: [github repo](https://github.com/powerline/fonts)

Code that simply worked, yikes!!

```bash
# clone
git clone https://github.com/powerline/fonts.git --depth=1
# install
cd fonts
./install.sh
# clean-up a bit
cd ..
rm -rf fonts
```



### Fix git's unexpected error while creating a ssh key

source: [here](https://stackabuse.com/how-to-fix-warning-unprotected-private-key-file-on-mac-and-linux/), worked well! 🏓



## Customize pop OS official article

https://support.system76.com/articles/customize-gnome/

## Bring already running program to front

```bash
sudo apt-get install wmctrl

# For shortcut to emoji-picker and to bring to front if already running.
xdotool search --classname emoji-picker windowactivate || emoji-picker
gnome-terminal -e /home/array/my_bin/run_emoji_picker
# I installled xclip to copy something to clipboard and also added alias for it, i.e., 
# alias clip='xclip -sel clip' # and now it works greatly!
# src: https://linuxize.com/post/how-to-add-directory-to-path-in-linux/

# IT IS COMPULSORY TO ADD YOUR BINARIES PATHS TO /etc/sudoers file, as then only sudo will know your binaries, yikes!!
# Use below command to add your executable(in /home/my_bin) accessible by sudo:
$ sudo visudo /etc/sudoers
# and add /home/array/my_bin to the secure_path variable, yikes!! (Now sudo will recognise your binaries in that /home/array/my_bin directory too.) Tip: Why does one needs visudo? => https://serverfault.com/a/26306

# Use below command to add your executable(in /home/my_bin) accessible by bash shell:
$ vi ~/.bashrc
and add the line:
export PATH="/home/array/my_bin:$PATH"
# Now shell will recognise your binaries in /home/array/my_bin directory too.

# To able to access all aliases (defined in ~/.bashrc file) from sudo, you must add the alias sudo to you ~/.bashrc file, i.e., 
alias sudo='sudo '
# Now all aliases will be available to your sudo command too, yikes!!, src: https://unix.stackexchange.com/a/148548

# Make shorctut to a script, program, etc directly by specifying script apth in the command box.

# Install bat file reader by first downloading the .deb package from: https://github.com/sharkdp/bat, (releases page@https://github.com/sharkdp/bat/releases)
# use below command to install:
sudo dpkg -i ~/Downloads/bat-musl_0.18.0_amd64.deb # Yikes, bat is installed now..!


# Install fish :
sudo apt install fish
set fish_greeting # This will remove the message though.
set fish_greeting "Have an awesome day!!" # This will set some message though.
# I not using any oh-my-fish themem though.., :)
chsh -s /usr/bin/fish # Yess, this did work, yikes!!
cat /etc/passwd # Verify that shell is changed in this file (** YOU NEED TO LOGOUT AND LOGIN AGAIN TO SEE THE EFFECT..),yikes! src: https://askubuntu.com/questions/195361/chsh-s-usr-bin-zsh-not-working
curl -L https://get.oh-my.fish | fish
# src: https://youtu.be/wpinXVpL5-U

#Installed hub 
sudo apt install hub
```



# Log in as root

`su -s`



### Shortcuts in gnome terminal

- ```bash
  gsettings set org.gnome.Terminal.Legacy.Keybindings:/org/gnome/terminal/legacy/keybindings/ next-tab '<Primary>Tab'
  gsettings set org.gnome.Terminal.Legacy.Keybindings:/org/gnome/terminal/legacy/keybindings/ prev-tab '<Primary><Shift>Tab'
  ```

  src: [Link](https://askubuntu.com/a/134632), yikes, above does ctrl+tab and ctrl+shift+tab binding for the gnome shell, yikes!!

- Also, do the binding for closing current tab with `ctrl+q` binding. Also add binding for 'Move current tab' to right or left using `alt+shift+left` and `alt+shift+right` binding, yikes!  Also add the keybinding to create new terminal using ctrl+t, yikes!.

- Also added shortcut for `ctrl+v` for pasting in gnome shell, yikes!!

### Enable always show folder path in nautilus using some tool..!, i need that!!!...

This was really helpful, as single command did the work I needed, yikes..!

## Installed Emoji picker

Install from pop shop(Optionally if your emoji picker doesn't have emoji's then do, `sudo apt install fonts-noto fonts-noto-color-emoji` to get all those, yikes)

Added custom shortcut in keyboard settings i.e., `Super key + d` , as 😄😄😄 looks good as in emojis.
I assigned the command `emoji-picker` to the shortcut.

## A question about suspend and hibernation in linux...
src: https://tinyurl.com/y952e73c
src of ubuntu help: https://tinyurl.com/y952e73c

## Scripts on gist
- "Using rm to delete nested node_modules folder", you can find the script on gist, yikes..!

## What did i do to setup hibernation..?(not done yet..!!)

sudo apt install kernelstub
sudo kernelstub -a "resume=UUID=a093586f-f74a-41f8-a1ab-b983a8f7388b"
#Where UUID=<your uuid for swap drive>.

kernelstub -a "resume=PARTUUID=287d698e-06"

## What to do to setup grub for dual boot with windows..?

You just need to execute below commands only, yikes.!

sudo apt update
sudo apt upgrade
sudo apt install grub2-common os-prober
sudo os-prober
sudo grub-update



## Using disks in linux
Use `df-gb` to show disks in gb, yikes!(aliases).
Use lsblk its best, yikes <3

> Use window's aomeio to change size of `e` drive to reduce it 7 more gbs so my swap can be exactly 8 gb's, yikes!!
probably my uuid for swap: UUID=a093586f-f74a-41f8-a1ab-b983a8f7388b

installl grup: https://www.youtube.com/watch?v=wLOZfT0732Y&feature=youtu.be








## Why Pop Os has no minimizing button..?
## Support Pop Os by donating @ https://pop-planet.info/forums/donate.
Coz it wants to promote usage of workspaces more, and you get to be more productive using workspaces and thats the whole point of workspaces, yikes.

## Way I am going with Pop OS linux..
- Download emoji picker for linux, like kentcdodds has one..
- Git comes preinstalled with PopOS, yikes!.

## Tip

- Use win+v to see notifications in popos, yo!
- Use `super+g` to toggle floating mode.
- Get size of current folder via `du -sh` or use `du -sh someFileOrSomeFolder`. Yikes!!
- What is suspend? Ans: Basically its super ultra low power mode, read more @ https://tinyurl.com/haas2et5 , and really really recommended for linux.* Meaning of -h flag:
tags(for searchable): #folder size, #file size, #find size.
```bash
du --help | grep '\-h' # This is basically a human readable flag.
du --help | grep '\-s' # This is basically a summary flag.
# src: https://linuxize.com/post/how-get-size-of-file-directory-linux/
```

- In terminal, use ctrl+alt+v to paste from cliboard, yikes.
- Use email client - geary and you can open it with hotkey -> super+e (sadly there's no default to load images from anywhere, :( ).
- Windows key is super key, remember it.
- Use "View All" from shorcuts in taskbar to view all awesome shortcuts, yikes!
- Flatpack vs. PopOs(deb) thing in Pop shop is just nothing, but so far PopOs has been good though.

## My favourite hotkeys
- using screenshots in ubuntu is really love, prtscr alone takes ss of whole desktop, but with alt, shift this becomes enjoyable, see in Pictures directory for more info on using these.
 Src: https://tinyurl.com/547ar2he
- Use super+t to open terminal.
- Use super+f to open files, yikes, its nautilus thouh.., yikes...
- All awesome shortcuts here: please refer once in a week atleast. YIKES!!!!
- Use super+y to toggle tile mode.
- Use Ctrl+alt+down/up for navigating between workspaces.
- Use super+/ for launcher. <3
- Use super+m to toggle between restore and maximise current window. <3
- Use super+ctrl+right/left to make current window to occupy right/left half of the screen.
- Use super+shift+up/down to shift focussed window to upper/down workspace.
- Use super+enter to enter in adjustment mode. <3
- Use super+q to CLOSE current window.
- Use window+arrows/vimNav keys to toggle between all tiled windows.
- Use super+o to change orientaion of current window in tile/slacke mode.
- Use simply super key to see all windows and tab/shift+tab to toggle/switch and open with enter key. <3
- Use super+tab/shift+tab switch between windows too.
- super(/alt)+tab/(shift+tab) is useful as it was in windows. <3
- You can use calculator in laucher mode.(See in in "Keyboard Shortcuts").
- Use ctrl+j/k to to move up/down in launcher options.
- You can use ctrl+s to search in "Pop OS Settings.
- Use = in launcher to perform some calculation.
- Use : to perform some command in sh.


## System settings I changed

- Turned on "Natural Scrolling" so my scrolling is not inverted now, yikes.
- Turned off "Disable while typing" setting(Mouse and Touchpad Settings), so my trackpad works awesome.
- I am amazed how tiling works like you can drag some windows to slack together so that they would behave like tabs in a single application, you need to use win+Left/Right arrow to toggle between these tabs, yikes.
- You can use win+up/down to move between different slacked windows.
- Also, win+up/down behaves like if some window's title is down you need to use down arrow and if the other window's title is up you would need to use arrow up to move to that slacked window, yikes!

## TODO

- Remap capslock key to esc key, so vim would work like as you were using in windows..!!
- Install telegram native application by reading how to guide from its official site..
- Enable hibernate for Pop OS, one requirement is that your swap space must be atleast equal to your ram, yikes..,i need to do it thouh..!!
src: https://help.ubuntu.com/16.04/ubuntu-help/power-hibernate.html

## Installed
- Tegegram Desktop from Pop store
- Vscode from Pop store(using Pop! OS(deb)
- Download chrome's .deb file using its official site, and installed via `sudo apt install ./google-chrome-stable_current_amd64.deb`, yikes!!
