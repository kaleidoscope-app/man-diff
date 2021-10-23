#!/bin/bash

if [[ ! -d .git ]]; then
	echo "$0: require git repository" >&2
	echo "$0: git clone https://github.com/kaleidoscope-app/man-diff.git ." >&2
	exit 1
fi

if [[ "$#" -lt "1" ]]; then
	echo "usage: $0 -all" >&2
	echo "usage: $0 [section] name" >&2
	exit 1
fi

if [[ "$1" == "-all" ]]; then
	git difftool "changeset/macOS11" "changeset/macOS12"
	exit $?
fi

function resolve_section() {
	SECTION_DESC=""
	case "$1" in
		"man1")
			echo "User Commands" 
		;;
		"man2")
			echo "System Calls"
		;;
		"man3")
			echo "C Library Functions"
		;;
		"man4")
			echo "Devices and Special Files"
		;;
		"man5")
			echo "File Formats and Conventions"
		;;
		"man6")
			echo "Games et. Al."
		;;
		"man7")
			echo "Miscellanea"
		;;
		"man8")
			echo "System Administration"
		;;
		*)
			echo ""
		;;
	esac
}

function file_exists() {
	git cat-file -e "$1:$MANPAGE_PATH" 2>/dev/null
	return $?
}

function compare_man_page() {
	BRANCH_A="macOS/11.6"
	BRANCH_B="macOS/12.0.1"
	SECTION=$1
	NAME=$2
	SECTION_DESC=$(resolve_section "man$SECTION")
	ESC_SECTION_DESC=$(printf '%q' "$SECTION_DESC") #escapes filenames.
	MANPAGE_PATH=""
	if [[ "$SECTION_DESC" != "" ]]; then
		MANPAGE_PATH="man/$SECTION/$SECTION_DESC/$NAME"
	else
		MANPAGE_PATH="man/$SECTION/$NAME"
	fi
	
	if ! file_exists "$BRANCH_A" && ! file_exists "$BRANCH_B"
	then
		echo "$0: $MANPAGE_PATH: No such file"
		exit 1
	fi 
	
	if ! file_exists "$BRANCH_A" && file_exists "$BRANCH_B"
	then
		echo "$0: $MANPAGE_PATH: No such file in $BRANCH_A"
		exit 2
	fi
	if file_exists "$BRANCH_A" && ! file_exists "$BRANCH_B"
	then
		echo "$0: $MANPAGE_PATH: No such file in $BRANCH_B"
		exit 2
	fi
	
	if git difftool --exit-code "$BRANCH_A" "$BRANCH_B" -- "$MANPAGE_PATH"
	then
		echo "$0: No changes in $MANPAGE_PATH"
		exit 3
	fi
	exit 0
}

if [[ $# -eq 1 ]]; then
	for i in "1" "2" "2" "3" "4" "5" "6" "7" "8" "9" "n"
	do
		STDOUT=$(compare_man_page "$i" "$1")
		EXIT_STATUS=$?
		
		if [[ "$EXIT_STATUS" == "0" ]]; then
			exit 0
		fi
		
		if [[ "$EXIT_STATUS" == "2" ]] || [[ "$EXIT_STATUS" == "3" ]] ; then
			echo $STDOUT
			exit $EXIT_STATUS
		fi
		
		if [[ "$i" == "n" ]] && [ $EXIT_STATUS -ne 0 ]; then
			echo "$0: No manual entry for $1"
			exit 1
		fi
	done
fi

if [[ $# -eq 2 ]]; then
	compare_man_page "$1" "$2"
fi
