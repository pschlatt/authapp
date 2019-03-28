require 'rails_helper'

RSpec.describe 'As a visitor' do
  it 'user can make an account' do

    visit new_user_path

    fill_in "Name", with: 'Paul'
    fill_in 'Email', with: 'paul.h.schlattmann@gmail.com'
    fill_in 'Password', with: 'Becool27'

    click_button 'Create User'

    expect(current_path).to eq(root_path)
    expect(User.last.name).to eq("Paul")

  end

  it 'can login' do

    visit root_path

    click_link "Login"

    fill_in 'email', with: 'paul.h.schlattmann@gmail.com'
    fill_in 'password', with: 'Becool27'

    click_button 'Login'

    expect(current_path).to eq(root_path)
    expect(page).to have_content("It worked.")

  end

end
