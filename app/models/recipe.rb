class Recipe < ApplicationRecord
    belongs_to :user
    belongs_to :category
    accepts_nested_attributes_for :ingredients, allow_destroy: true, reject_if: proc {|att| att['name'.blank?]}
    
end
