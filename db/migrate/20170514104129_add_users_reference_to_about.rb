class AddUsersReferenceToAbout < ActiveRecord::Migration[5.0]
  def change
    add_reference :abouts, :user
  end
end
