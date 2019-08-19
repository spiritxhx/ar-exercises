class Store < ActiveRecord::Base
  has_many :employees
  validates :name, length: {minimum: 3}
  validates :name, presence: true
  validates :annual_revenue, numericality: { only_integer: true, greater_than: 0 }
  # validates :annual_revenue, :greater_than 0
end
