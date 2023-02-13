#!/bash/bin

KEY=$(cat certificate.pem)
sed -e 's/\\n/\n/g' ${KEY}> new.pem

# echo -e $(KEY) > new.pem # Another way to solve it
# cat certificate.pem | sed -e 's/\\n/\n/g' # Another way to solve it