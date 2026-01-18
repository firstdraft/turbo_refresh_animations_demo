class List < ApplicationRecord
  has_many :items, dependent: :destroy
  broadcasts_refreshes

  validates :title, presence: true
end
