class Recipe < ApplicationRecord
    belongs_to :user
    belongs_to :category
    accepts_nested_attributes_for :category, :reject_if => :all_blank
    # allow_destroy: true
    

end
