class Family < ApplicationRecord
  belongs_to :user, dependent: :destroy
  validates_presence_of :pick_up_name,
                        :pick_up_phone,
                        :relationship_to_child
end
