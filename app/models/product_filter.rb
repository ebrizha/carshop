class ProductFilter
  attr_accessor :manufacturer, :manufacturer, :drive_type, :motor_type, :body_type, :color_type, :transmission_type, :status

  def initialize(attr)
    attr.each do |key, val|
      self.send "#{key}=", val
    end
  end
end
