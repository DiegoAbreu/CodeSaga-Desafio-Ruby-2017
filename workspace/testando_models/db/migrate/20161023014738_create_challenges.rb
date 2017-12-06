class CreateChallenges < ActiveRecord::Migration
  def change
    create_table :challenges do |t|
      t.string :name
      t.integer :code_points
      t.string :description
      t.string :repo_name

      t.timestamps null: false
    end
  end
end
