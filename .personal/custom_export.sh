


read -p "Do you wanna confirm before installing any config file? (Y|n) : " -n 1 -r

echo    # (optional) move to a new line
echo

if [[ $REPLY =~ ^[Yy]$ ]]; then

    if cmp --silent -- ~/.config/kglobalshortcutsrc ./kglobalshortcutsrc |  cmp --silent ~/.config/khotkeysrc ./khotkeysrc ; then
	echo
    else
	read -p "Do you wanna install kde custom shortcuts? (y|N) : " -n 1 -r
	echo
	echo
	if [[ $REPLY =~ ^[Yy]$ ]]; then

	    [ ! -f ~/.config/kglobalshortcutsrc ] || mv ~/.config/kglobalshortcutsrc ~/.config/kglobalshortcutsrc.old
	    ln -f ./kglobalshortcutsrc ~/.config/kglobalshortcutsrc

	    [ ! -f ~/.config/khotkeysrc ] || mv ~/.config/khotkeysrc ~/.config/khotkeysrc.old
	    ln -f ./khotkeysrc ~/.config/khotkeysrc
	fi
    fi

    if cmp --silent ~/.config/touchegg/touchegg.conf ./touchegg.conf; then
	echo
    else
	echo "Do you wanna install touche custom shortcuts?"
	read -p " [It's a utility for touchpads] (y|N): " -n 1 -r
	echo
	echo
	if [[ $REPLY =~ ^[Yy]$ ]]; then

	    package2=touchegg
	    if pacman -Qs $package2 > /dev/null ; then
		[ ! -f ~/.config/touchegg/touchegg.conf ] || mv ~/.config/touchegg/touchegg.conf ~/.config/touchegg/touchegg.conf.old
		ln -f ./touchegg.conf ~/.config/touchegg/touchegg.conf
	    else
		echo "The package $package2 is not installed. Try installing it before running this"
	    fi
	fi
    fi
    
else
    echo "I don't trust you to trust yourself, or even myself. I want you to confirm for each file that I edit. Try again"
    #    echo
fi

