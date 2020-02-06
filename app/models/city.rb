class City < ApplicationRecord
  has_one :dogs
  has_one :dogsitters
end
