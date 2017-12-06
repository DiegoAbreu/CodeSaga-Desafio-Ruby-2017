class AddItemCategoryRefToItems < ActiveRecord::Migration
  def change
    add_reference :items, :item_category, index: true
  end
end
