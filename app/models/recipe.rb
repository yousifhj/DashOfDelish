class Recipe < ApplicationRecord
    belongs_to :user
    belongs_to :category
    accepts_nested_attributes_for :category, :reject_if => :all_blank

    validates :title, presence:true
    validates :description, presence:true
    validates :directions, presence:true
    validates :ingredients, presence:true

    
    # allow_destroy: true

end
