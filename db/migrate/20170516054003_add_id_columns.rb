class AddIdColumns < ActiveRecord::Migration[5.0]
  def change
    add_column :articles, :user_id, :integer
    add_column :banners, :user_id, :integer
    add_column :colleges, :school_id, :integer
    add_column :colleges, :department_id, :integer
    add_column :departments, :discipline_id, :integer
    add_column :events, :user_id, :integer
    add_column :favorites, :user_id, :integer
    add_column :favorites, :talk_id, :integer
    add_column :favorites, :jobTalk_id, :integer
    add_column :schools, :country_id, :integer
    

  end
end
