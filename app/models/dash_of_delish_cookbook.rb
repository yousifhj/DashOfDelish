class DashOfDelishCookbook < ApplicationRecord
    has_many :recipes
    has_many :users

end
