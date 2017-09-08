class Blog < ApplicationRecord
  # default state of a post is draft
  enum status: { draft: 0, published: 1 }

  # to turn title into slug for show route
  extend FriendlyId

  # slugify post titles
  friendly_id :title, use: :slugged

  validates_presence_of :title, :body

  # belongs_to :topic

  has_many :comments, dependent: :destroy

  def self.special_blogs
    all
  end

  def self.featured_blogs
    limit(2)
  end

  def self.recent
    order("created_at DESC")
  end
end
