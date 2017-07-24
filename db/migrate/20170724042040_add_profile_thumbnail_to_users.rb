class AddProfileThumbnailToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :profile_thumbnail, :text
  end
end
