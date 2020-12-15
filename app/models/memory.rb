class Memory < ApplicationRecord
  belongs_to :user
  has_many :likes, dependent: :destroy
  has_one_attached :image

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :country

  with_options presence: true do
    validates :image
    validates :title
    validates :start_date
    validates :end_date
    validates :country_id, numericality: { other_than: 1, message: "Select" }
    validates :place
    validates :text
  end

  def self.search(search)
    if search != ""
      Memory.where('title LIKE(?)', "%#{search}%").or(Memory.where('text LIKE(?)', "%#{search}%")).or(Memory.where('country_id LIKE(?)', "%#{search}%")).or(Memory.where('place LIKE(?)', "%#{search}%"))
    else
      Memory.all
    end
  end
end
