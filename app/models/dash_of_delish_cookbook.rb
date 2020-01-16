class DashOfDelishCookbook < ApplicationRecord
    has_many :recipes
    has_many :ingredients 
    has_many :comments, through: :users
end
