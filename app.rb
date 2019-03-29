require_relative 'config/environment'

class App < Sinatra::Base
  get '/reversename/:name' do
    @name = params[:name]
    @name.reverse
  end

  get '/square/:number' do
    @name = params[:number].to_i
    @squared = @name*@name
    @squared.to_s
  end

  get '/say/:number/:phrase' do
    @number = params[:number].to_i 
    @phrase = params[:phrase]
    @phrase * @number 
  end

end
