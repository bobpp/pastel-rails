# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_pastel_session',
  :secret      => '9cb7fb5e36a479d5223862f01c6b285f78d26444f309f9205d49eed9d18c1a501d796fa06fa6ade80b135bdca178f666e4b7b0f703e6281bb9354f33663e9dd0'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
