#!/bin/bash
# 1. Hello User Script

read -p "Enter your name: " name
echo "Hello $name, welcome to Bash Scripting!"

# 2. Even or Odd Checker

read -p "Enter a num: " num

if (( num % 2 == 0 )); then
    echo "$num is Even"
else
    echo "$num is Odd"
fi

# 3. Simple Calculator
#!/bin/bash

read -p "Enter first number: " num1
read -p "Enter second number: " num2

# Ask for operator
read -p "Enter an operator (+, -, *, /): " op

# Perform calculation
case $op in
    +) result=$((num1 + num2)) ;;
    -) result=$((num1 - num2)) ;;
    \*) result=$((num1 * num2)) ;;  # * needs escaping
    /) 
       if [ "$num2" -ne 0 ]; then
           result=$((num1 / num2))
       else
           echo "Error: Division by zero!"
           exit 1
       fi
       ;;
    *) 
       echo "Invalid operator!"
       exit 1
       ;;
esac

Print result
echo "Result: $result"

# 4. File Existence Check

read -p "Enter a File Name: " filename

if [ -e "$filename" ]; then
    echo "File Exists"

else 
    echo "File not Found"
fi

5. Multiplication Table

read -p "Enter a Num: " Num

echo "Multiplication of Given Num $Num:"

for i in {1..10}
do 
    echo "$Num x $i = $((Num * i ))"
done

# 6. Reverse a String

read -p "Enter Str: " Str

reversed=$(echo "$Str" | rev)

echo "reversed string: $reversed"

# 7. Find Largest Number in an Array
read -p "Enter number separated by space: " -a nums

largest=${nums[0]}

for num in "${nums[@]}"; do
    if (( num > largest )); then
        largest=$num

    fi
done

echo "largest number is: $largest"

# 8. Word Counter in a File

!/bin/bash

read -p "Enter filename: " file

if [ -e "$file" ]; then
    words=$(wc -w < "$file")
    echo "Number of words in $file: $words"
else
    echo "File not found"
fi

# 9. User Login Checker

!/bin/bash

read -p "Enter username to check: " username

if grep -q "^$username:" /etc/passwd; then
    echo "User '$username' exists on the system."
else
    echo "User '$username' does NOT exist."
fi

# 10. Backup Script
#!/bin/bash

# Create backup folder if it doesn't exist
mkdir -p backup

# Copy all .txt files to backup folder
cp *.txt backup/ 2>/dev/null

echo "Backup completed. All .txt files copied to 'backup' folder."
