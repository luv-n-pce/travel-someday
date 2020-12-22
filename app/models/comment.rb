class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :memory

  validates :text, presence: true
end
