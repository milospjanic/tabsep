#! /bin/bash

#squeeze multiple spaces to a single space
tr -s " " < $1 > $1.tmp

#substitute spaces with tabs
sed -i 's/\s/\t/g' $1.tmp

#squeeze multiple tabs into a single tab 
tr -s "\t" < $1.tmp > $1

#remove intermediary files
rm $1.tmp
