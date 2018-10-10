class User < ApplicationRecord
  has_many :entries
  has_many :pools, through: :entries
  has_many :picks, through: :entries
end
