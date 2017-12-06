require 'rails_helper'

feature 'User visits homepage' do
  scenario 'successfully' do
    visit root_path
    expect(page).to have_content 'Welcome to Inventory App'
  end

  scenario 'and sees item category list' do
    item_category1 = ItemCategory.create(name: "Notebook")
    item_category2 = ItemCategory.create(name: "Monitor")
    item_category3 = ItemCategory.create(name: "Cadeira")

    visit root_path
    expect(page).to have_content item_category1.name
    expect(page).to have_content item_category2.name
    expect(page).to have_content item_category3.name
  end
end
