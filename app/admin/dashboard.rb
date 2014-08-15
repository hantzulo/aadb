ActiveAdmin.register_page "Dashboard" do

require 'date'
now = Date.today
yesterday = Date.yesterday
#yesterday = (now - 14)

  menu priority: 1, label: proc{ I18n.t("active_admin.dashboard") }

  content title: proc{ I18n.t("active_admin.dashboard") } do
    #div class: "blank_slate_container", id: "dashboard_default_message" do
    #  span class: "blank_slate" do
    #    span I18n.t("active_admin.dashboard_welcome.welcome")
    #    small I18n.t("active_admin.dashboard_welcome.call_to_action")
    #  end
    #end

    columns do

        column do
            panel "Yesterday's Archives" do
                table_for Archives.where("created_at = ?", yesterday) do
                      column  "Date",     :created_at
                      column  "Machine",  :archive_from
                      column  "Project",  :archive_project
                      column  "Library",  :archive_library
                      column              :archive_name
                end
            end
        end  
    end

    # Here is an example of a simple dashboard with columns and panels.
    #
    # columns do
    #   column do
    #     panel "Recent Posts" do
    #       ul do
    #         Post.recent(5).map do |post|
    #           li link_to(post.title, admin_post_path(post))
    #         end
    #       end
    #     end
    #   end

    #   column do
    #     panel "Info" do
    #       para "Welcome to ActiveAdmin."
    #     end
    #   end
    # end
  end # content
end
