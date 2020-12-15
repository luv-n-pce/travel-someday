class Plan < ApplicationRecord
  belongs_to :user

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :country

  with_options presence: true do
    validates :country_id, numericality: { other_than: 1, message: "Select" }
    validates :place
  end
end
