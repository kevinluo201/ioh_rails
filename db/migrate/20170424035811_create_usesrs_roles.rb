class CreateUsesrsRoles < ActiveRecord::Migration[5.0]
  def change
    create_table :usesrs_roles do |t|
      t.references :user, foreign_key: true
      t.references :role, foreign_key: true
    end
  end
end
