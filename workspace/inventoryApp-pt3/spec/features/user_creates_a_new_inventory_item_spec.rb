require 'rails_helper'

feature 'User creates a new inventory item' do
  scenario 'successfully' do
    item_category = ItemCategory.create(name: "Notebook")

    visit new_item_path
    fill_in 'Name', with: 'MacBook Air'
    fill_in 'Description', with: 'Apple Notebook'
    fill_in 'Features', with: '8gb, 500gb, 13"'
    fill_in 'Asset number', with: '134 MAC'
    select item_category.name, from: 'Item category'
    click_button 'Create Item'

    expect(page).to have_content 'MacBook Air'
    expect(page).to have_content 'Apple Notebook'
    expect(page).to have_content '8gb, 500gb, 13"'
    expect(page).to have_content '134 MAC'
    expect(page).to have_content item_category.name
  end
end
