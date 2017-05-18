class CreateDepartments < ActiveRecord::Migration[5.0]
  def change
    create_table :departments do |t|
      t.string :chinese_name
      t.string :chinese_short
      t.string :english_name
      t.string :english_short

      t.timestamps
    end
  end
end
