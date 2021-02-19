class Cocktail < ApplicationRecord
  has_many :doses, dependent: :destroy
  has_many :ingredients, through: :doses

  before_validation :downcase_names

  validates :name, presence: true, uniqueness: true

  def downcase_names
    self.name = name.downcase unless name.nil?
  end
end
