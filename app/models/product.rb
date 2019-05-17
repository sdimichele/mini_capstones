class Product < ApplicationRecord
  validates :name, presence: true
  # validates :name, uniqueness: true


  validates :price, presence: true
  validates :price, numericality: { greater_than_or_equal_to: 0 }

  validates :description, presence: true
  
  has_many :orders
  has_many :images
  belongs_to :supplier
 
  def is_discounted?
    price < 25
  end
    
  def tax
    price * 0.09
  end

  def total
    price + tax
  end

end
