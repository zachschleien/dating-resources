ActiveAdmin.register_page "Dashboard" do

  menu priority: 1, label: proc{ I18n.t("active_admin.dashboard") }

  content title: proc{ I18n.t("active_admin.dashboard") } do
    section "Recent Dating Resources" do
    table_for Resource.all.order("created_at DESC").limit(10) do
        column "Name", :company do |resource|
          link_to resource.company, admin_resource_path(resource)
        end

        column :created_at
        column :updated_at
    end
        strong { link_to "View All", admin_resources_path }
  end
  end
end
