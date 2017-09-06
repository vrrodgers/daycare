class Information < ApplicationRecord
  belongs_to :user, dependent: :destroy
  belongs_to :Frequency, dependent: :destroy
end
