class Family < ApplicationRecord
  belongs_to :user, dependent: :destroy
end
