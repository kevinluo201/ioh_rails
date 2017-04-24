class ChangeUsersRolesTableNameToRolesUsers < ActiveRecord::Migration[5.0]
  def change
    rename_table :usesrs_roles, :roles_users
  end
end
