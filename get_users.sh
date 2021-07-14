cat /etc/passwd | awk -F ":" '{ print $1 }' \
    | grep -v "root\|user1" | sort | uniq \
    | tr '\n' ' ';echo
