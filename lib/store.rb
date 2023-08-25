class Store < ActiveRecord::Base
  has_many :employees
  validates :name, presence: true, length: { minimum: 3 } 
  validates_numericality_of :annual_revenue, greater_than_or_equal_to: 0
 
  validate :must_have_men_or_women_apparel
  
  def must_have_men_or_women_apparel
    if !mens_apparel.present? && !womens_apparel.present?
      errors.add(:must_have_men_or_women_apparel, "Stores must carry at least one of the men's or women's apparel")
    end
  end
end
