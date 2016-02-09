An App about nothing:

It stores quotes (possibly to be voted on and ranked)
It associates those quotes with characters and episodes through the characters in them

Users can upload their fav quotes(and possibly vote on them)

It should have:

A sign up page
A login page
An Index that shows a list of all the quotes (rank? top 100?(if too many get saved)


For quotes: 

a create new page
an edit page(for your submit only)
a delete page (for you submit only)


a way to scrape data for episodes and characters.

users won't need to be able to touch episodes as they aren't making any more.
but they might need to be able to add characters in case it's an obscure character being quoted...

for ref:

Quotes belong to a character
A quote has one episode
A character has many quotes
A character has many episodes
An episode has many characters
An episode has many quotes through characters

Quotes
t.text :content
t.integer :char_id?
t.integer :rating?

Episode
t.text :title

Character
text :name

character_episodes 

char_id
episode_id



User

has a username
has a password
