class EditImagesHeadingInPhotosColumn < ActiveRecord::Migration
  def change
    remove_attachment :photos, :images
    add_attachment :photos, :image
  end
end
