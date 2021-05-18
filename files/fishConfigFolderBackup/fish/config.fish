##### BELOW IS MY SOURCES FILE THAT HAS ALL THE ALIASES, YIKES!!
. /home/array/my_bin/sources/source1
. /home/array/my_bin/sources/secrets

# 🔥︎🔥︎Below statement imports all files in folder sahil_custom_fish_path
# source /home/chetan/.config/fish/sahil_custom_fish_path/*.fish
for f in ~/.config/fish/functions-sahil/*.fish
	source $f 
end
