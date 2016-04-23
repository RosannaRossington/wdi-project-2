class User < ActiveRecord::Base
  has_many :recommendations
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :email, presence: true, uniqueness: true
  validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create }
  # validates :username, presence: true, uniqueness: true
  # validates :first_name, length: { in: 3..50 }
  # validates :last_name, length: { in: 3..50 }

end
