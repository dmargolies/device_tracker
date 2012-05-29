require 'spec_helper'

describe 'home page' do
  it 'redirects to vehicles index page after successful login' do
    visit root_url
    user = User.create(:email => 'foo@bar.com', :password => 'password')
    visit '/login'
    fill_in 'Email', :with => 'foo@bar.com'
    fill_in 'Password', :with => 'password'
    click_button 'Log in'
    
  end
end
