require 'rails_helper'
#MANAGING Comments#
describe 'Comment on an article' do
  specify 'I can leave a commment' do
    visit '/articles/1'
    fill_in 'Enter your comment', with:'A comment'
    click_button('Post')
    expect(page).to have_content('A comment')
  end
end
