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
set fish_greeting Have an awesome day!! # This will set some message though.
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

