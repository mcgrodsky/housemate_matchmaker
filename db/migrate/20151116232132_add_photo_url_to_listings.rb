class AddPhotoUrlToListings < ActiveRecord::Migration
  def change
    add_column :listings, :photo_url, :string
  end
end
