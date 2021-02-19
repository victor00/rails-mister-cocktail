class Cocktail < ApplicationRecord
  has_many :doses, dependent: :destroy
  has_many :ingredients, through: :doses
  has_one_attached :photo

  validates :photo, presence: true

  before_validation :downcase_and_capitalize_name

  validates :name, presence: true, uniqueness: true

  def downcase_and_capitalize_name
    self.name = name.downcase.capitalize unless name.nil?
  end
end
