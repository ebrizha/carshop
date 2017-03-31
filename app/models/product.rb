class Product < ApplicationRecord
  belongs_to              :manufacturer
  belongs_to              :motor_type
  belongs_to              :drive_type
  belongs_to              :body_type
  belongs_to              :color_type
  belongs_to              :transmission_type
  has_and_belongs_to_many :photo

  accepts_nested_attributes_for :photo, :allow_destroy => true

end
