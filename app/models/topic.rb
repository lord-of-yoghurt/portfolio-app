class Topic < ApplicationRecord
  validates_presence_of :title

  has_many :blogs

  # select only topics that have blogs attached to them,
  # i.e. topics that were used for a blog at least once
  def self.with_blogs
    includes(:blogs).where.not(blogs: { id: nil })
  end
end
