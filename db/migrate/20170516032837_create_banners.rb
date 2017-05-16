class CreateBanners < ActiveRecord::Migration[5.0]
  def change
    create_table :banners do |t|
      t.string :img
      t.string :page

      t.timestamps
    end
  end
end
