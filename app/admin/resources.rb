ActiveAdmin.register Resource do
  permit_params :company, :description, :url, :category_id, :tagline, :admin 
  
  index do
    column "Name", :company
    column :category_id 
    column :description
    column :url
    column :tagline
    actions
  end
end

