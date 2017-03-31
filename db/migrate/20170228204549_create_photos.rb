class CreatePhotos < ActiveRecord::Migration[5.0]
  def change
    create_table :photos do |t|
      t.attachment :source
    end

    create_table :product_imges_products, id: false do |t|
      t.belongs_to :product,  index: true
      t.belongs_to :photo,    index: true
    end
  end
end
