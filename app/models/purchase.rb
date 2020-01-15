class Purchase < ApplicationRecord
  serialize :food, Hash
  has_many :products, dependent: :destroy
  validates :cashier, :food, presence: true

  before_save(:titleize_purchase)
  private
  def titleize_purchase
    self.cashier = self.cashier.titleize
  end
end
