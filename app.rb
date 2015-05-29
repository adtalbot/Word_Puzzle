require('bundler/setup')
Bundler.require(:default, :production)

Dir[File.dirname(__FILE__) + '/lib/*.rb'].each { |file| require file }

get('/') do
  erb(:index)
end

post('/result') do
  @user_input = params.fetch('user_input')
  @results = @user_input.word_puzzle()
  erb(:result)
end

post('/guess') do
  @user_guess = params.fetch('user_guess')
  erb(:guess)
end

get('/guess') do
  @user_guess = params.fetch('user_guess')
  @user_input = params.fetch('user_input')
  erb(:guess)
end
