class AddColumnsToNews < ActiveRecord::Migration[5.0]
  def change
  	add_column :news, :title, :string
    add_column :news, :context, :text
  end
end
