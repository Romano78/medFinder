class AddRemotePhotoUrlToMedications < ActiveRecord::Migration[5.2]
  def change
    add_column :medications, :remote_photo_url, :string
  end
end
