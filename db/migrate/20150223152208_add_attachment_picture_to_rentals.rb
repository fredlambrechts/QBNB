class AddAttachmentPictureToRentals < ActiveRecord::Migration
  def self.up
    change_table :rentals do |t|
      t.attachment :picture
    end
  end

  def self.down
    remove_attachment :rentals, :picture
  end
end
