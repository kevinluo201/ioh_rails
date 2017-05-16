class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.string :title
      t.text :context
      t.datetime :start
      t.datetime :end

      t.timestamps
    end
  end
end
