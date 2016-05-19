class CreateResources < ActiveRecord::Migration
  def change
    create_table :resources do |t|
      t.string :company
      t.text :description
      t.string :url

      t.timestamps null: false
    end
  end
end