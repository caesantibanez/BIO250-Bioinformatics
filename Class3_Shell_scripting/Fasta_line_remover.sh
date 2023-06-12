#!/bin/bash

input=''

#functions

lineRemover ()
{
 awk '!/^>/ { printf "%s", $0; n = "\n" } 
/^>/ { print n $0; n = "" }
END { printf "%s", n }
' $input > ${input%.*}_fixed.fasta

}

usage() {
cat <<EOF

usage: $0 <options>

This script compiles sequences into one line.

-h   |  Print this help
-i   |  The input FASTA file to fix
EOF
}

### Main
OPTIND=1
while getopts "h:i:" opt; do

    case "${opt}" in
	h)
	    usage
	    exit 0
	    ;;
	
	i)
	    input=$OPTARG
	    ;;
    esac

done

shift $((OPTIND-1))
if [ "$input" != "" ]
then
	lineRemover;
else
    echo "ERROR: Input file needed [-i]"
    exit 1
    
fi
exit $?
