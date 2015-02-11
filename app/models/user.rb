class User < ActiveRecord::Base
  include DeviseTokenAuth::Concerns::User

  # devise :database_authenticatable, :registerable,
  #        :recoverable, :rememberable, :trackable, :validatable, :omniauthable

  has_many :expenses, dependent: :destroy
end
