class Recipe < ApplicationRecord
    belongs_to :users
    belongs_to :dashofdelishcookbook
    has_many :ingredients, dependent: :destroy
    accepts_nested_attributes_for :ingredients, allow_destroy: true, reject_if: proc {|att| att['name'.blank?]}
    
end
