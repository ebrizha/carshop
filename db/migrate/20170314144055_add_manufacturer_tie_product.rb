class AddManufacturerTieProduct < ActiveRecord::Migration[5.0]
  def change
    change_table :products do |t|
      t.belongs_to  :manufacturer, index: true
    end
  end
end
