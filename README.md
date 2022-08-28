# README
ABOUT THE APP:
This is a Rails app built on top Trello API.

The app synchronizes the lists and  cards for a given designated board in Trello. It can also create cards for a particular list.  Webhook route available which outputs details in the terminal when cards are created or moved.

# [NOTE] Gems added to work with Trello for the task
gem 'rest-client'
gem 'dotenv-rails'
gem 'json'
gem 'pry'

Environment:
```
    Ruby version: 2.6.6
    Rails version: 6.1.4
    Default Port: 3000
```

Running the app

    install:
```
    Run bundle install
```

    Configuration:

# Create a '.env'file at the root level (i.e same level as gemfile for example)
# Add your Trello keys in a file '.env' as indicated here below
TRL_KEY: Your Trello api key
TRL_TOKEN: Your Trello server token
BOARD_ID: The Trello board ID you would like to interact with
NGROK_HOST: Add your NGROK url e.g.'***.ngrok.io'

# Set up webhook on trello for the card events you want to track
POST https://api.trello.com/1/webhooks?key={trello_api_key}&token={trello_token}

with body:
{
    "callbackURL":"http://{YOUR_NGROK}.ngrok.io/webhooks",
    "idModel":"{CARD_ID}"
}
```

run on standard rails port 3000:

`rails s`

If you need to clarify anything further please contact me at: kmanzu@yahoo.com