require 'sinatra/base'
require 'sinatra/reloader'

class Application < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  post '/sort-names' do
    names = params[:names]
    list_of_names = names.split(',').sort.join(',')

    list_of_names
  end
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
 
# end