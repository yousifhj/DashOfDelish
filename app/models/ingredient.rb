class Ingredients < ApplicationRecord
    belongs_to :recipe, optional: true
end
