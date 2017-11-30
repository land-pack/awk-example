#!/bin/csh -f
awk '\
BEING { print "File\tOwner"} \
            {print $9, "\t", $3} \
END { print "-DONE-"} \
'
