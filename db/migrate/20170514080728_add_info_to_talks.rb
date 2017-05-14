class AddInfoToTalks < ActiveRecord::Migration[5.0]
  def change
    add_column :talks, :thanks, :text
    add_column :talks, :post_date, :date
    add_column :talks, :poster, :string
    add_column :talks, :profile_pic, :string
  end
end
