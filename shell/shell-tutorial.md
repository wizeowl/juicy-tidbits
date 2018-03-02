### The curly braces inside the echo 
```bash
HELLO="Greet"
echo "${HELLO}ing"
```
### does /etc/passwd exist?
```bash
[ -e /etc/passwd ]
```
### other tests for files
```bash
# Is the file a directory?
[ -d ... ]
# Is it a regular file?
[ -f ... ]
# Is it readable?
[ -r ... ]
# Is it writable?
[ -w ... ]
# Is it executable?
[ -x ... ]
# Is it not empty?
[ -s ... ]
```
### tests for strings
```bash
# Is the string empty?
[ -z str ]
# Is it not empty?
[ -n str ]
# Are strings equal?
[ str1 = str2 ]
# Unequal?
[ -w str1 != str2 ]
```

# tests for numbers
```bash
[ a -eq b ]
[ a -ne b ]
[ a -lt b ]
[ a -le b ]
[ a -gt b ]
[ a -ge b ]
```