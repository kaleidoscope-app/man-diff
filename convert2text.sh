#!/bin/bash


if [[ "$#" -lt "1" ]]; then
	echo
	echo usage: $0 src dst
	echo 
	echo Prepare src folder like this:
	echo mkdir -p src/root/usr/share
	echo mkdir -p src/System/Library/Filesystems/acfs.fs/Contents
	echo cp -r /usr/share/man src/root/usr/share
	echo cp -r /System/Library/Filesystems/acfs.fs/Contents/man src/System/Library/Filesystems/acfs.fs/Contents
	echo sw_vers > src/sw_vers.txt
	echo 
	exit 1
fi

SRC=$1
DST=$2

if [ ! -d "$SRC" ]; then
	echo "$0 src directory needs to exist." 
	exit 1
fi

if [ -z ${DST+x} ]; then
	echo "usage: $0 src dst" 
	exit 1
fi

for PAGE_PATH in "$SRC"/root/usr/share/man/**/*;
do
	PAGE_NAME=$(basename "$PAGE_PATH") 
	PAGE_NAME=${PAGE_NAME%.*} # remove file extension
	PAGE_SECTION_PATH=$(dirname "$PAGE_PATH")
	PAGE_SECTION=$(basename "$PAGE_SECTION_PATH")
	case "$PAGE_SECTION" in
		"man1")
			SECTION_NR="1"
			SECTION_DESC="User Commands"
		;;
		"man2")
			SECTION_NR="2"
			SECTION_DESC="System Calls"
		;;
		"man3")
			SECTION_NR="3"
			SECTION_DESC="C Library Functions"
		;;
		"man4")
			SECTION_NR="4"
			SECTION_DESC="Devices and Special Files"
		;;
		"man5")
			SECTION_NR="5"
			SECTION_DESC="File Formats and Conventions"
		;;
		"man6")
			SECTION_NR="6"
			SECTION_DESC="Games et. Al."
		;;
		"man7")
			SECTION_NR="7"
			SECTION_DESC="Miscellanea"
		;;
		"man8")
			SECTION_NR="8"
			SECTION_DESC="System Administration"
		;;
		*)
			SECTION_NR=${PAGE_SECTION:3} # manxx -> xx 
			SECTION_DESC=""
		;;
	esac
	FANCY_DIR_PATH="$DST/man/$SECTION_NR/$SECTION_DESC"
	mkdir -p "$FANCY_DIR_PATH"
	#/usr/bin/man -P /bin/cat "$PAGE_PATH" > "$DST/$PAGE_PATH.txt"
	export MANWIDTH=80
	/usr/bin/man -c "$PAGE_PATH" | col -bx \
		| awk '/^mandoc: / { print $0 > "/dev/stderr"; next } { print $0 }' \
		> "$FANCY_DIR_PATH/$PAGE_NAME"
done

cp "$SRC/sw_vers.txt" "$DST/info.txt"

