class Recipe < ApplicationRecord
    belongs_to :users
    has_many :ingredients 
    has_many :comments
end
