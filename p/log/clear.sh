#!/bin/bash
file_path="/var/www/userlog.txt"
if [ ! -f "$file_path" ]; then
    echo "File does not exist"
    exit 1
fi
touch /root/temp.txt
temp_file="/root/temp.txt"
while read -r line; do
IFS=' ' read -ra fields <<< "$line"
word_to_remove="sshd["
input_string=${fields[4]}
output_string=${input_string/$word_to_remove/}
output_string=${output_string/"sudo:"/}
output_string=${output_string/"]"/}
output_string=${output_string/":"/}
output_string=${output_string/"dropbear["/}
if [ -n "$output_string" -a -f "/proc/$output_string/status" ] ; then
echo "$line" >> "$temp_file"
fi
done < "$file_path"
mv "$temp_file" "$file_path"