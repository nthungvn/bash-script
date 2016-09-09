#Usage: Remove newline and line start with ; character
cat $1 | sed '/;/d' | sed '/^$/d'
