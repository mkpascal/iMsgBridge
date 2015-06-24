require 'sinatra'
require 'sinatra/jsonp'
require 'sinatra/config_file'

set :raise_errors, false
set :show_exceptions, false

config_file 'config.yml'

get '/imsgbridge' do
  to = params['to']
  message = params['message']
  password_params = params['password']
  password = settings.password

  if password_params == password
    system 'osascript <<EOF
        tell application "Messages"
                set targetService to 1st service whose service type = iMessage
                set targetBuddy to buddy "' + to + '" of targetService
                send "' + message + '" to targetBuddy
        end tell
	EOF'

    data = {:status => 'sent'}
  else
    data = {:status => 'unauthenticated'}
  end

  JSONP data
end

get '/pebble/contacts' do
  password_params = params['password']
  password = settings.password

  if password_params == password

    data = {:contact => settings.contact, :status => 'received'}
  else
    data = {:status => 'unauthenticated'}
  end

  JSONP data
end

error do
  data = {:status => 'error'}
  JSONP data
end
