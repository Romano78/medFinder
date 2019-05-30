class RemovePhotoUrlToMedicationsChangeNameToPhotoInMedications < ActiveRecord::Migration[5.2]
  def change
    remove_column :medications, :photo_url
    remove_column :medications, :remote_photo_url
    add_column :medications, :photo, :string
  end
end


