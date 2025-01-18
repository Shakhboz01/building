class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  enum :role, { admin: 0, registrator: 1, developer: 2, guest: 3 }

  devise :database_authenticatable, :recoverable,
         :rememberable, :validatable
  # validates_presence_of :name
  # validates_uniqueness_of :email
end
