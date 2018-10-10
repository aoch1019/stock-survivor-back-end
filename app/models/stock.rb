class Stock < ApplicationRecord
  has_many :picks
  has_many :entries, through: :picks
end
