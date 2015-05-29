ENV["RACK_ENV"] = "test"

require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('The path of the word puzzle website', :type => :feature) do
  it('takes user input and replaces all vowels with a dash and returns the string on new page') do
    visit('/')
    fill_in('user_input', :with => 'geography')
    click_button('Submit')
    expect(page).to have_content('g--gr-phy')
  end
end
