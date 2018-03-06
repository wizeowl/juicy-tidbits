### recursively
grep -r "..." 

###same as grep -r --include "*.js"
find . -name "*.js" | xarg grep "..." 

### only files tracked by git
git grep 

### exact words
grep -w

### shows the line numbers
grep -n "..." *.js 

### show the next 2 lines
grep -A 2 "..." *.js 

### the previous 2 lines
grep -B 2 "..." *.js 

### context aware
grep -C 2 ....
grep -B 3 ....  
grep -A 1 ....    

### the extend regex
grep -E              

### highlight
grep --color 

### exclude         
grep -v "..."

### count matches
grep -c

### multiple matches
grep -e "..." -e "...."

### extended grep
egrep "x|y" ...