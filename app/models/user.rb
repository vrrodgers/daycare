class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  belongs_to :role
  has_many :parents, dependent: :destroy
  has_many :children, dependent: :destroy
  has_many :addresses, dependent: :destroy
  has_many :Activites

  extend FriendlyId
 friendly_id :name, use: :slugged

end
