#!/bin/bash


# 1. Set your account details in the app
#
# - Enter your ORGNAME below — it’s the username you picked when you signed up at apigee.com
# - Keep the APPNAME as “sandbox”: it’s a context we automatically created for you.
#   It’s completely open by default, but don’t worry, other apps you create are not!

ORGNAME="YOUR APIGEE.COM USERNAME"
APPNAME="sandbox"


# 2. Set some details for your first object
#
# Great, we know where your account is now!
# Let’s try to create a book, save it on Apigee, and output it in the app.
#
# - Keep the type as “book”, otherwise we won’t know you completed the example
# - Enter the title of your favorite book below, instead of “the old man and the sea”.

TYPE="books"

output=$(curl 	-s \
				-X POST \
				-d '{ "title" : "the old man and the sea" }' \
				"https://api.usergrid.com/$ORGNAME/$APPNAME/$TYPE")


# 3. Now, run it!
#
# You’re good to go! Open a terminal, navigate to this directory and execute this script: ./curl_example.sh
#
# You may need to execute the following command to be able to run the script: chmod u+x curl_example.sh

if [ "$output" == "" ]; then
	echo -e '\nCould not create the book. Did you enter your ORGNAME (username) correctly on line 9 of curl_example.sh?'
else
	echo -e '\nSuccess! Here is the the object we stored; notice the timestamps and unique id we created for you:\n'
	echo $output
	echo -e '\nThe curl command we used to create this oject was:'
	echo -e "curl -X POST -d '<JSON object you want to store>' https://api.usergrid.com/$ORGNAME/$APPNAME/$TYPE\n" 
fi


# 4. Congrats, you’re done!
#
# - You can try adding more properties on line 26 and executing the script again!
# - You can then see the admin view of this data by logging in at https://apigee.com/usergrid
# - Or you can go explore more advanced examples in our docs: http://apigee.com/docs/
