class ChageUser < ActiveRecord::Migration[7.1]
  def up
    rename_table("users", "admin_user")
    add_column("admin_user", "username", :string, :limit => 25)
    change_column("admin_user", "email", :string, :limit => 25)
    rename_column("admin_user", "last_name", "lName")
    add_index("admin_user", "username")
  end

  def down
    remove_index("admin_user", "username")
    rename_column("admin_user", "lName", "last_name")
    change_column("admin_user", "email", :string, :default => '', :null =>  false)
    remove_column("admin_user", "username")
    rename_table("admin_user", "user")
  end
end
