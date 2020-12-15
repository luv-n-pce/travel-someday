class Country < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: 'Japan' },
    { id: 3, name: 'Abroad' },
  ]

  include ActiveHash::Associations
  has_many :memories
end