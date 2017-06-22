class CreateAbouts < ActiveRecord::Migration[5.0]
  def change
    create_table :abouts do |t|
      t.text :bio
      t.string :phone
      t.string :degree
      t.string :fb_url

      t.timestamps
    end
  end
end
