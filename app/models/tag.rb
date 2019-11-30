class Tag < ApplicationRecord
  has_many :recipes_tags, dependent: :destroy
  has_many :recipes, through: :recipes_tags

  validates :name, presence: true,
            length: { minimum: 2 }
end
