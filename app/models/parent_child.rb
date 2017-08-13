class ParentChild < ApplicationRecord
  belongs_to :child
  belongs_to :parent
end
