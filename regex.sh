#!/bin/bash


# read -rp "Enter Something: " data
# if [[ $data =~ ^[0-9]+$ ]]; then
# 	echo "it is an integer number"
# else
# 	echo"not an integer number"
# fi

#!/bin/bash


read -rp "Enter Something: " data
test=($data =~ [0-9]+$)
if [ $test ]; then
        echo "it is an integer number"
else
        echo"not an integer number"
fi