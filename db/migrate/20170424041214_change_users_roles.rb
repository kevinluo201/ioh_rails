class ChangeUsersRoles < ActiveRecord::Migration[5.0]
  def change
    drop_table :usesrs_roles

  end
end
