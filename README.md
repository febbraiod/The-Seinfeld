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
A character has many quotes
Quotes also belong to an episode
an episode has many quotes

an episode has many characters through quotes
a char has many episodes through quotes


Quotes
t.text :content
t.integer :char_id
t.integer :episode_id
t.integer :rating?

Episode
t.text :title
t.text :synopsis

Character
text :name

User

has a username
has a password
has an email address


Routes needed:

/signup

/signin

/quotes to show all quotes and rankings there of

/quotes/new  adds new quote, must have character...give checkboxes, and the option to add a new one...option for image upload?  Needs check boxes for episodes as well.

/quotes/:id shows one quote with picture of character, this is where the upvote can happen maybe?

/quote/:id/update

/users/:username(slug?) shows all quotes added by that user

/episodes shows all quotes by episode

/episode/:id shows all quotes from one episode

#every time a quote appears it needs to link to it's own page for voting.





