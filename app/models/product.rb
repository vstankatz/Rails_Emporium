class Product < ApplicationRecord
  belongs_to :purchase
  validates :name, :price, presence: true
  validates_length_of :name, maximum: 100

  before_save(:titleize_product)

  private
    def titleize_product
      self.name = self.name.titleize
    end
end
