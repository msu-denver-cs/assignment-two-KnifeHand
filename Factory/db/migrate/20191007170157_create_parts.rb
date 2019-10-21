class CreateParts < ActiveRecord::Base
  attachment :store_logo do
    validator do |attachment, errors|
      if attachment.data.bytesize > 5.megabytes
        errors << "!!!Image is too large (max size 5 MB)!!!"
      elsif !Logo::Image.is?image?(attachment.binary)
        drrors << "!!!Must be an image!!!"
      end
    end
  end
  def change
    create_table :parts do |t|
      t.string :title
      t.text :description
      t.string :image_url
      t.decimal :price, precision: 8, scale: 2

      t.timestamps
    end
  end
end
