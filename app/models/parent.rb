class Parent < ApplicationRecord
  belongs_to :frequency
  belongs_to :marital_status
  belongs_to :gender
  belongs_to :parent_type
  has_many :parent_children
  has_many :children, :through => :parent_children
  belongs_to :address
  belongs_to :user


  def parent_type_name
    ParentType.try(:name)
  end
end
