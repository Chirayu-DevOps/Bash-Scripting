read -rp "Enter an Email: " email
if [[ $email =~ ^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,4}$ ]]; then
    echo "Valid Email Address"
else
    echo "Invalid Email Address"
fi
