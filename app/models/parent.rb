class Parent < ApplicationRecord
  belongs_to :frequency
  belongs_to :marital_status
  belongs_to :gender
  has_and_belongs_to_many :children
end
