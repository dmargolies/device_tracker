require 'spec_helper'

describe 'user sign in' do
  it 'allows users to sign in after they have registered' do
    user = User.create(:email    => 'foo@bar.com',
                       :password => 'password')

    visit '/users/sign_in'

    fill_in 'Email',    :with => 'foo@bar.com'
    fill_in 'Password', :with => 'password'

    click_button 'Sign in'

    page.should have_content('Signed in successfully.')
  end
end
