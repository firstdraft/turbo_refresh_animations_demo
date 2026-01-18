class Item < ApplicationRecord
  belongs_to :list, touch: true

  validates :content, presence: true
end
