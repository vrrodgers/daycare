class Parent < ApplicationRecord
  belongs_to :frequency
  belongs_to :marital_status
  belongs_to :gender
  belongs_to :parent_type
  has_many :parent_children
  has_many :children, :through => :parent_children
  belongs_to :address
  belongs_to :user

   validates_presence_of :frequency,
                         :marital_status,
                         :gender,
                         :parent_type,
                         :first_name,
                         :last_name,
                         :Middle_initial,
                         :work_address,
                         :work_hours,
                         :driver_license_number,
                         :occupation,
                         :employed_by
   validates :cell_phone, presence: true, length: {maximum: 10}
   validates :social, presence: true, length: {maximum: 9}
   validates :office_phone, presence: true, length: {maximum: 10}


   validates :home_phone, presence: true, length: {maximum: 10}

    def parent_type_name
      ParentType.try(:name)
    end

    
end
