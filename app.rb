require 'sinatra/base'
require 'sinatra/reloader'

class Application < Sinatra::Base

  get '/hello' do
    name = params[:name]

    return "hello #{name}"
  end

#   get '/posts' do
#     name = params[:name]
#     cohort_name = params[:cohort_name]

#     return "Hello #{name}, you are in the #{cohort_name} cohort 2023."
#   end
  
#   post '/posts/submit' do
#     name = params[:name]
#     message = params[:message]

#     return "Thanks #{name}, you sent this message: #{message}"
#   end
  
#     # This allows the app code to refresh
#   # without having to restart the server.
  configure :development do
    register Sinatra::Reloader
  end
end