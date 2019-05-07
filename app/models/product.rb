class Product < ApplicationRecord
  def is_discounted?
    price < 25
  end
    
  
   # price < 25 ? true : false
  def tax
    price * 0.09
  end

  def total
    price + tax
  end

end
