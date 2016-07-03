require 'spec_helper'

#MANAGING Navbar Links#
describe 'Navbar Links' do
  specify 'I can click blog button' do
    visit '/blog'
    click_link 'Blog'
    expect(page).to have_content('OOI II')
  end
end

describe 'Navbar Links' do
  specify 'I can click Me button' do
    visit '/blog'
    click_link 'Me'
    expect(page).to have_content('Omorhefere Imoloame')
  end
end

describe 'Navbar Links' do
  specify 'I can click Portfolio' do
    visit '/blog'
    click_link 'Portfolio'
    expect(page).to have_content('Some of my work')
  end
end

#Errors handling
describe 'Error 403' do
  specify 'I get 403 error' do
    visit '/403'
    expect(page).to have_content('Access Denied')
  end
end

describe 'Error 404' do
  specify 'I get 404 error' do
    visit '/404'
    expect(page).to have_content('Not Found')
  end
end

describe 'Error 422' do
  specify 'I get 422 error' do
    visit '/422'
    expect(page).to have_content('Change Rejected')
  end
end

describe 'Error 500' do
  specify 'I get 500 error' do
    visit '/500'
    expect(page).to have_content('Server Error')
  end
end
