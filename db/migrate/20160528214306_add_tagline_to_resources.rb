class AddTaglineToResources < ActiveRecord::Migration
  def change
    add_column :resources, :tagline, :string
    add_index :resources, :tagline
  end
end
