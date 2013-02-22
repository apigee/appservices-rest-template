#  Creating an entity within a collection using App Services.
#  Let’s try creating a book (the entity in this case) in the system and output it on the page.
                    
#  Modify the URL: http://api.usergrid.com/{ORG_NAME}/{APP_ID}
#  such that {ORG_NAME} is the name or UUID of your organization. Set {APP_ID} To 'sandbox'.  

#  The collection {TYPE} needs to be set to "title", then all thats left to do is 
#  edit {TITLE} below with the name of your favorite book! 

# curl -X POST "https://api.usergrid.com/{org_id}/{ORG_NAME}/{APP_ID}" -d 
# {
#    {type} : {TITLE}
# } 

#  Once you have modify the items in braces {} above, combine lines 10-13 into one line
#  It should end up looking similar to this, but with your ORG_NAME and your favorite book. 

echo Adding the specified entity to the collection
curl -X POST "https://api.usergrid.com/nimasy/sandbox/books" -d '{"title":"The Alchemist"}'


# Retrieving an entity from the collection is just as easy.
# You can retrieve an entity by its name or UUID. 
# We can even retrieve everything within the collection, like this:
curl -X GET "https://api.usergrid.com/nimasy/sandbox/books"

# We can also Retrieve by UUID. For example, assume that the 
# UUID for the entity is 187d31d9-0742-11e2-a7b5-12313d21509c.
# curl -X GET "https://api.usergrid.com/nimasy/sandbox/cats/187d31d9-0742-11e2-a7b5-12313d21509c"
