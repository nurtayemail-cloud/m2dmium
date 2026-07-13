#!/bin/bash

SCRIPT_DIR=$(dirname "$0")
SCRIPT_DIR=${SCRIPT_DIR:-"."}

set -eE

SCRIPT_DATE="[2026-05-09]"
SCRIPT_BUILD="1.2"
PAYLOAD_DIR=/usb/usr/sbin/scripts
RECOVERY_KEY_LIST="$PAYLOAD_DIR"/short_recovery_keys.txt

MNT=
TMPFILE=

fail() {
	printf "%b\n" "$*" >&2
	exit 1
}

clear
echo "IF8gICAgICAgICAgICAgICBfICAgICBfICAgICBfICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAp8IHxfXyAgIF9fIF8gIF9ffCB8X19ffCB8X18gLyB8XyBfXyBfX18gIF8gX18gX19fICAgX19fIF8gX18gCnwgJ18gXCAvIF9gIHwvIF9gIC8gX198ICdfIFx8IHwgJ18gYCBfIFx8ICdfIGAgXyBcIC8gXyBcICdfX3wKfCB8XykgfCAoX3wgfCAoX3wgXF9fIFwgfCB8IHwgfCB8IHwgfCB8IHwgfCB8IHwgfCB8ICBfXy8gfCAgIAp8Xy5fXy8gXF9fLF98XF9fLF98X19fL198IHxffF98X3wgfF98IHxffF98IHxffCB8X3xcX19ffF98ICAgCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICA=" | base64 -d
echo "" # fix display
echo "$SCRIPT_DATE" # \n so it displays better
echo "v$SCRIPT_BUILD"
echo "m2dmium"
echo "https://github.com/nurtayemail-cloud/m2dmium"
echo ""
echo "(1) Install Modmium"
echo "(s) Shell"
echo "(c) Credits"
echo "(w) whale payload"
echo "(e) Exit and reboot"
echo ""
echo -n "> "
read choice

if [ "$choice" = "1" ]; then
    /bin/sh "$PAYLOAD_DIR/modmium.sh"
	/bin/sh
 	sleep infinity
elif [ "$choice" = "s" ]; then
	/bin/sh #shut up! its fixed now :whale:
	sh /usb/usr/sbin/payloads_menu.sh
    sleep infinity
elif [ "$choice" = "c" ]; then
    echo "-----M2dmium-----"
    echo "Skids: For being smart and actually reading"
    echo "Me: For being dumb and making this for some reason"
    echo "crosbreaker and CrOSmium: Actually making badsh1mmer and modmium"
	echo "If you haven't gotten this yet, this is a joke do not run this shit lmfao"
	# codenerd you're not fun :rage: bring back fanxql injection!!!
	# echo "fanxql: being tuff, fanxql injection"
   	echo "-------------------"
	echo ""
 	echo "entering shell..."
	/bin/sh
 	sleep infinity
elif [ "$choice" = "e" ]; then
    echo "Rebooting in 3 seconds..."
	sleep 3
	reboot -f
 	echo "If you are seeing this the reboot failed, please manually reboot by hitting REFRESH and POWER at the same time."
  	echo "Or you can play around with the shell."
    /bin/sh
 	sleep infinity
elif [ "$choice" = "w" ]; then
	cat "$PAYLOAD_DIR/whale.txt"
 	/bin/sh
else
    echo "Invalid choice"
	echo "entering shell..."
 	echo ""
  	/bin/sh
   	sleep infinity
fi
