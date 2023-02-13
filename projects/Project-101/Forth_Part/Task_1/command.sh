privateip_1=$(awk '/PrivateIpAddress/ {print  $2}' info.json | tail -1 | sed 's/\"//g')
privateip_2=$(cat info.json | awk -F"[\"]+" '/PrivateIpAddress/{print $4}' | tail -1)
privateip_2_1=$(awk -F"[\"]+" '/PrivateIpAddress/{print $4}' info.json | tail -1)
privateip_3=$(grep PrivateIpAddress info.json | head -n1 | cut -d'"' -f4)

sed -i "s/ec2-private_ip/$privateip_2_1/g" terraform.tf
