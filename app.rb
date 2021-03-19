require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @name = params[:name]
    "#{@name.reverse}"
  end

  get '/square/:number' do
    @num = params[:number].to_i
    @square = @num * @num
    "#{@square.to_s}"
  end

  get '/say/:number/:phrase' do
    @num = params[:number].to_i
    @phrase = params[:phrase]

    @repeat_phrase = ""
    while @num > 0
      @repeat_phrase += @phrase
      @num -= 1
    end

    "#{@repeat_phrase}"

  end

end
