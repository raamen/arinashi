class Evaluation < ApplicationRecord
  belongs_to :user
  belongs_to :restaurant
  belongs_to :rate
end
