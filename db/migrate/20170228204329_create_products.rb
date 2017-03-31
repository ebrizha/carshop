class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string      :title
      t.text        :description
      t.float       :price
      t.boolean     :status
      t.belongs_to  :motor_type,        index: true
      t.belongs_to  :drive_type,        index: true
      t.belongs_to  :body_type,         index: true
      t.belongs_to  :color_type,        index: true
      t.belongs_to  :transmission_type, index: true
      t.belongs_to  :user,              index: true

      t.timestamps
    end
  end
end
