# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_Healthcare_session',
  :secret      => 'ace23ba32364c0eaf32e1cea4cdd532be51d191bcac5dcfc08080498c08c5c481f8e6fe9c8954299d9b348a5834cdb93af48514eb61ca6d804ca4ae78d3d5a87'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
