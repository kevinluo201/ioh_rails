class CreateIndentities < ActiveRecord::Migration[5.0]
  def change
    create_table :indentities do |t|
      t.string :name

      t.timestamps
    end
  end
end
