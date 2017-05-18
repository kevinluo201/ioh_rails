class CreateSchools < ActiveRecord::Migration[5.0]
  def change
    create_table :schools do |t|
      t.string :chinese_name
      t.string :english_name
      t.string :english_short
      t.string :region
      t.string :category
      t.string :featured

      t.timestamps
    end
  end
end
