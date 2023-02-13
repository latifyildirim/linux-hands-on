 grep -i "invalid user" auth.log | cut -d' ' -f8 | sort | uniq -c > invalid_user.txt
 grep -i "invalid user" auth.log | cut -d' ' -f9 | sort | uniq -c >> invalid_user.txt

 # than open invalid_user.sh and remove user,from,for lines.
cat invalid_user.sh | grep -v "from" | grep -v "user" > | grep -v "for" > new_invalid_user.txt

or

grep -Eio "invalid user .+" auth.log | awk '{print $3}' | sort | uniq -c > invalid_user.txt

or

grep -Eio 'invalid user .+ \[' auth.log | awk '{print $3}' | sort | uniq -c > invalid_user.txt

or

grep -Eio 'invalid user .+ [preauth]' auth.log | awk '{print $3}' | sort | uniq -c > invalid_user.txt

or

grep -Eio 'invalid user .+ [preauth]' auth.log | awk '{print $3}' | sort | uniq -c > invalid_user.txt