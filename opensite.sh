while IFS=, read -r field1 field2
do
    echo "$field1 and $field2"
    
done < "link.txt mail.txt"
