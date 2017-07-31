class Parent < ApplicationRecord
  belongs_to :frequency
  belongs_to :marital_status
  belongs_to :gender
  belongs_to :parent_type
  has_and_belongs_to_many :children

  def parent_type_name
    ParentType.try(:name)
  end
end
