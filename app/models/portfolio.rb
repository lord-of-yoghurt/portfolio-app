class Portfolio < ApplicationRecord
  validates_presence_of :title, :body, :main_image, :thumb_image

  scope :angular_items, -> { where(subtitle: "Angular") }
  scope :ruby_on_rails_items, -> { where(subtitle: "Ruby on Rails") }
end
