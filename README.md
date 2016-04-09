# tabsep
To convert multiple spaces tabs to a single tab use the code below:

Input **file.txt**
<pre>
chr1       10100           10330 
chr1     10345    10590         
chr1    16100       16315      
chr1    20060      20210   
chr1      56200   56350   

#Usage 
**chmod 775 tabsep** 
**./tabsep file.txt**

Output **file.txt**
chr1    10100   10330
chr1    10345   10590
chr1    16100   16315
chr1    20060   20210
chr1    56200   56350

#Code
First use tr -s to squeeze spaces, then sed to substitute spaces to tabs, then tr -s to squeeze tabs.
tr -s " " < $1 > $1.tmp
sed -i 's/\s/\t/g' $1.tmp
tr -s "\t" < $1.tmp > $1


