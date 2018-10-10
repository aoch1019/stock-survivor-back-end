class Pool < ApplicationRecord
  has_many :entries
  has_many :users, through: :entries
  has_many :picks, through: :entries
end
