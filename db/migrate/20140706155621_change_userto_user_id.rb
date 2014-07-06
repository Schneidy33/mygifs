class ChangeUsertoUserId < ActiveRecord::Migration
  def change
    remove_column :gifs, :user, :string
    add_column :gifs, :user_id, :integer
  end
end
