class Product < ApplicationRecord
  validates :name, presence: true
  validates :price, presence: true
  #should validation be added in the models? correct + db validation too
  #, validations should be added in the models to ensure data integrity and enforce business rules. In this case, the validation ensures that a product must have a name before it can be saved to the database. 
end
