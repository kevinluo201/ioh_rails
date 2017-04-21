class RenameUsersRolesToRolesUsers < ActiveRecord::Migration[5.0]
  def change
    rename_table :user_roles, :roles_users
  end
end
