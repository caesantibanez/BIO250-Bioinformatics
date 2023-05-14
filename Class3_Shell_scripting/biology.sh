#!/bin/sh
INPUT_SRING=hello
While [ "$INPUT_STRING" != "biology" ]
do
    echo "Please type something in (bye to quit)"
    read INPUT_STRING
    echo "You typed: $INPUT_STRING"
done
