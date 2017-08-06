class Theme < ApplicationRecord
  has_many :players
  has_many :stages
end
