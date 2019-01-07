class Child < ApplicationRecord
  belongs_to :gender
  has_many :parent_children
  has_many :parents,  :through => :parent_children
  belongs_to :address
  belongs_to :user
  validates_presence_of :first_name,
                        :Middle_initial,
                        :last_name,
                        :grade,
                        :gender_id,
                        :date_of_birth,
                        :child_social_security,
                        :medical_conditions,
                        :allergies,
                        :pediatrician_phone,
                        :pediatrician_name,
                        :pediatrician_address,
                        :photagraphy
end
