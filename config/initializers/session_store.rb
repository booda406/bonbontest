# Be sure to restart your server when you modify this file.

#store in cookies limit 4kb
# Bonbontest::Application.config.session_store :cookie_store, key: '_bonbontest_session'

#store in sessions table won't have limit
Bonbontest::Application.config.session_store :active_record_store, key: '_bonbontest_session', :domain => 'http://loveturtle.herokuapp.com'