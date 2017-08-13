class Child < ApplicationRecord
  belongs_to :gender
  has_many :parent_children
  has_many :parents,  :through => :parent_children
  belongs_to :address
  belongs_to :user
end
