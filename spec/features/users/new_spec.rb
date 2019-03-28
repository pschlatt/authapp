require 'rails_helper'

RSpec.describe 'As a visitor' do
  it 'user can make an account' do

    visit new_user_path

    fill_in "user.name", with: 'Paul'
    fill_in 'user.email', with: 'paul.h.schlattmann@gmail.com'
    fill_in 'user.password', with: 'Becool27'

    click_button 'Create User'

    expect(current_path).to eq(root_path)
    expect(page).to have_content(User.last.name)

  end

end
