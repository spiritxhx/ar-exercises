class Store < ActiveRecord::Base
  has_many :employees
  validates :name, length: {minimum: 3}
  validates :name, presence: true
  validates :annual_revenue, numericality: { only_integer: true, greater_than: 0 }
  # validates :annual_revenue, :greater_than 0
  validates :mens_apparel, :womens_apparel, inclusion:{in: [true, false]}
  validate :customized_test

  def customized_test
    if !mens_apparel && !womens_apparel
      errors.add(:mens_apparel, "Wrong!")
    end
  end

end
