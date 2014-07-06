class AddUserToGifs < ActiveRecord::Migration
  def change
    add_column :gifs, :user, :string
  end
end
