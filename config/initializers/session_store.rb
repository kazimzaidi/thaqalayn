# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_thaqalayn_session',
  :secret      => '965d04810b0cdb79ed707e09e529a2b2c467cbe52ae2309152521f8b763955a5e94669d159fdae97da25146a817709643a2122c5f8a6ef5ee36062d7c15157d3'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
