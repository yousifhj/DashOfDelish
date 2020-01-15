class Recipe < ApplicationRecord
    belongs_to :users
    has_many :comments, through: :user
    has_many :ingredients 
end
