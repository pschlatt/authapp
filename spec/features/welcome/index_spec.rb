require 'rails_helper'

RSpec.describe 'As a visitor' do
  it 'Takes us to a new add user page' do

    visit root_path

    click_on "Add New User"

    expect(current_path).to eq(new_user_path)

  end

end
