class CreateTalks < ActiveRecord::Migration[5.0]
  def change
    create_table :talks do |t|
      t.string :title
      t.text :context
      t.string :part1

      t.timestamps
    end
  end
end
