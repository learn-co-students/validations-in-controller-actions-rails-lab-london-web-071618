class Post < ActiveRecord::Base
  validates :title, presence: true
  validates :content, length: { in: 50..350 }
  validates :category, inclusion: { in: %w(Fiction Non-Fiction) }
end
