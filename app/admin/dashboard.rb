ActiveAdmin.register_page "Dashboard" do

  menu priority: 1, label: proc{ I18n.t("active_admin.dashboard") }

  content title: proc{ I18n.t("active_admin.dashboard") } do
    columns do
      column do
        panel "Recent User" do
          ul do
            User.last(5).map do |user|
              li link_to(user.name, admin_user_path(user))
            end
          end
        end
      end

      column do
        panel "Number" do
         ul do
          li "Total Users: #{User.count}"
          li "Total Requests: #{Request.count}"
          li "Total Drivers: #{Driver.count}"
         end
        end
      end
      column do
        panel "Recent Driver" do
          ul do
            Driver.last(5).map do |driver|
              li link_to(driver.name, admin_driver_path(driver))
            end
          end
        end
      end
    end

    panel "Request per day" do
      render 'shared/chart'
     end
  end 
end
