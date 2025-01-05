class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  enum :role, [ :admin, :registrator, :developer ], suffix: true

  devise :database_authenticatable, :recoverable,
         :rememberable, :validatable
  # validates_presence_of :name
  # validates_uniqueness_of :email
end
