class Admin < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  # before_create :set_jti
  # devise :database_authenticatable, :registerable,
  #        :recoverable, :rememberable, :validatable

  # private
  #   def set_jti
  #     self.jti ||= SecureRandom.uuid
  #   end
  include Devise::JWT::RevocationStrategies::JTIMatcher

  devise :database_authenticatable, :registerable, :validatable,
         :jwt_authenticatable, jwt_revocation_strategy: self
end
