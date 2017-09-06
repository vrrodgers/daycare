class Frequency < ApplicationRecord
  has_many :parents
  has_many :information
end
