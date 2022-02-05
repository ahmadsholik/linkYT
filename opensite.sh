#while IFS=, read -r field1 field2
#do
#    echo "$field1 and $field2"
#    
#done < "link.txt mail.txt"

while read -u 3 -r line1 && read -u 4 -r line2; do
  # process the lines
  # note that the loop will end when we reach EOF on either of the files, because of the `&&`
 chromium-browser $line1 --profile-mail=$line2
done 3< https://raw.githubusercontent.com/ahmadsholik/linkYT/main/link.txt 4< https://raw.githubusercontent.com/ahmadsholik/linkYT/main/mail.txt
