class City < ApplicationRecord
    has_many :dogs
    has_many :sitters
  end