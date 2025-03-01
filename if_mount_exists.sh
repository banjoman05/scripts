# Define mountpoint variable
mount="/123"

# If statement
if [[ $(findmnt -M "$mount") ]]; then
    do_the_thing
else
    do_another_thing
    exit 1
fi
