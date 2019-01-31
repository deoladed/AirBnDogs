class Stroll < ApplicationRecord
  # belongs_to :dog
  belongs_to :dogsitter
  has_and_belongs_to_many :dogs
end
