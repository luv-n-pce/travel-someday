class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :memories, dependent: :destroy
  has_many :plans, dependent: :destroy

  with_options presence: true do
    validates :nickname, length: { maximum: 40 }
    validates :password, format: { with: /\A(?=.*?[a-z])(?=.*?[\d])[a-z\d]+\z/i, message: "includes both letters and numbers"}
  end
end
