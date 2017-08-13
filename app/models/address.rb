class Address < ApplicationRecord
  has_many :parents, dependent: :destroy
  has_many :children, dependent: :destroy
  accepts_nested_attributes_for :parents,
                                allow_destroy: true,
                                reject_if: ->(attrs) { attrs['name'].blank? }
  belongs_to :user
  accepts_nested_attributes_for :children,
                                allow_destroy: true,
                                reject_if: ->(attrs) { attrs['name'].blank? }
end
