class Blog < ApplicationRecord
  # default state of a post is draft
  enum status: { draft: 0, published: 1 }

  # to turn title into slug for show route
  extend FriendlyId
  friendly_id :title, use: :slugged

  validates_presence_of :title, :body

  # belongs_to :topic
end
