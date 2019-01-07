class Detail< ApplicationRecord
  belongs_to :user, dependent: :destroy
  belongs_to :Frequency, dependent: :destroy

  validates_presence_of :tuition_amount,
                        :frequency_id
                        
end
