read -rp "Enter an Email: " email
if [[ $email =~ ^ab*c$ ]]; then
    echo "Valid Text"
else
    echo "Invalid Text"
fi