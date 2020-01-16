class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :recipe
  belongs_to :dash_of_delish_cookbook
end
