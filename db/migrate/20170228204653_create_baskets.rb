class CreateBaskets < ActiveRecord::Migration[5.0]
  def change
    create_table :baskets do |t|
      t.belongs_to  :user, index: true

      t.timestamps
    end

    create_table :basket_products, id: false do |t|
      t.belongs_to :product,  index: true
      t.belongs_to :basket,   index: true
      t.integer    :count
    end
  end
end
