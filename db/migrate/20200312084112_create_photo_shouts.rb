class CreatePhotoShouts < ActiveRecord::Migration[6.0]
  def change
    create_table :photo_shouts do |t|
      t.attachment :image, null: false
      t.timestamps
    end
  end
end
