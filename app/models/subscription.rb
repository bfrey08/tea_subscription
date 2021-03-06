class Subscription < ApplicationRecord
  belongs_to :customer
  has_many :subscription_teas
  has_many :teas, through: :subscription_teas

  enum status: [:active, :cancelled]
  enum frequency: [:weekly, :monthly, :yearly]
  validates :frequency, inclusion: {in: frequencies.keys}



end
