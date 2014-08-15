class CreateArchives < ActiveRecord::Migration
  def change
    create_table :archives do |t|
    	t.string	:archive_from
    	t.string	:archive_project
    	t.string	:archive_library
    	t.string	:archive_name
    	t.string	:archive_r
    	t.string	:archive_note

      	t.timestamps
    end
  end
end
