class CreateUsesrsRoles2 < ActiveRecord::Migration[5.0]
  def change
    create_table :usesrs_roles, id: false do |t|
      t.references :user, index: true, null: false
      t.references :role, index: true, null: false
    end
  end
end
