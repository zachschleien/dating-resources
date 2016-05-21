ActiveAdmin.register Resource do
  permit_params :company, :description, :url, :category_id, :admin 
  
  index do
    column "Name", :company
    column :category_id 
    column :description
    column :url
    actions
  end
end

