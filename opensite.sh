#while IFS=, read -r field1 field2
#do
#    echo "$field1 and $field2"
#    
#done < "link.txt mail.txt"
input1=https://raw.githubusercontent.com/ahmadsholik/linkYT/main/link.txt
input2=https://raw.githubusercontent.com/ahmadsholik/linkYT/main/mail.txt
while read -u 3 -r line1 && read -u 4 -r line2; do
  # process the lines
  # note that the loop will end when we reach EOF on either of the files, because of the `&&`
 chromium-browser $line1 --profile-mail=$line2
done 3< $input1  4< $input2
