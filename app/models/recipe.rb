class Recipe < ApplicationRecord
  has_many :comments, dependent: :destroy
  has_many :recipes_tags, dependent: :destroy
  has_many :tags, through: :recipes_tags
  belongs_to :user
  validates :title, presence: true,
            length: { minimum: 5 }

  def all_tags=(names)
    self.tags = names.split(',').map do |name|
      Tag.where(name: name).first_or_create!
    end
  end

  def all_tags
    tags.map(&:name).join(", ")
  end
end
