ActiveAdmin.register Archives do

permit_params :archive_from, :archive_project, :archive_library, :archive_name, :archive_r, :archive_note

index do
  column  "Date",     :created_at
  column  "Machine",  :archive_from
  column  "Project",  :archive_project
  column  "Library",  :archive_library
  column              :archive_name
  column  "Archiver", :archive_r 
  column  "Notes",    :archive_note
  #actions
end

filter :created_at,       as: :date_range
filter :archive_from,     as: :select
filter :archive_project,  as: :string, filters: ['contains'] 

form do |f|
  f.inputs 'Archive Details' do
    f.input :archive_from,    label: "Machine"
    f.input :archive_project, label: "Project" 
    f.input :archive_library, label: "Library"
    f.input :archive_name
    f.input :archive_r,       label: "Archiver"
    f.input :archive_note,    label: "Notes"
  end
  f.actions
end


  # See permitted parameters documentation:
  # https://github.com/gregbell/active_admin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # permit_params :list, :of, :attributes, :on, :model
  #
  # or
  #
  # permit_params do
  #  permitted = [:permitted, :attributes]
  #  permitted << :other if resource.something?
  #  permitted
  # end


end
