class CreateTalkers < ActiveRecord::Migration[5.0]
  def change
    create_table :talkers do |t|
      t.references :user, foreign_key: true
      t.references :talk, foreign_key: true
      t.string :degree
      t.string :identity

      t.timestamps
    end
  end
end
