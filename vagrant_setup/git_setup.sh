echo "Configuring Git for first-time use"

echo "Please enter your name: "
read name

echo "Please enter you email: "
read email

while true; do
    read -p "Do you want to set git config with $name and $email? " yn
    case $yn in
        [Yy]* ) echo "Setting git config --global user.name $name";
                echo "Setting git config --global user.email $email";
                git config --global user.name $name;
                git config --global user.email $email;
                echo "\nGetting current git config name and email:";
                git config --get user.name;
                git config --get user.email;
                break;;
        [Nn]* ) echo "Exiting without setting git config"; break;;
        * ) echo "Please answer yes or no";;
    esac
done

echo "\nYou can run this script again to update git config"
