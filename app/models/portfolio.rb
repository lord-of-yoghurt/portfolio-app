class Portfolio < ApplicationRecord
  has_many :technologies, dependent: :destroy
  accepts_nested_attributes_for :technologies,
                                reject_if: lambda { |attrs| attrs['name'].blank? }

  mount_uploader :thumb_image, PortfolioUploader
  mount_uploader :main_image, PortfolioUploader

  scope :angular_items, -> { where(subtitle: "Angular") }
  scope :ruby_on_rails_items, -> { where(subtitle: "Ruby on Rails") }

  def self.by_position
    order("position ASC")
  end
end
