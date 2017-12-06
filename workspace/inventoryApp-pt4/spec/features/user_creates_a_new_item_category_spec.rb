require 'rails_helper'

feature 'User creates a new item category' do
  scenario 'successfully' do
    visit new_item_category_path
    fill_in 'Name', with: 'Notebook'
    click_on 'Create Item category'

    expect(page).to have_content 'Notebook'
  end

  scenario 'and create another one' do
    visit new_item_category_path
    fill_in 'Name', with: 'Notebook'
    click_on 'Create Item category'
    expect(page).to have_content 'Notebook'

    click_on 'Create another category'
    fill_in 'Name', with: 'Monitor'
    click_on 'Create Item category'
    expect(page).to have_content 'Monitor'
  end
end
