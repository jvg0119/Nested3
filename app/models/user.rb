class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable

  has_many :surveys

  enum role: { regular_user: 0, admin: 1  }

  after_initialize :set_default #{ self.role ||= 0 } #:set_default

  private

  def set_default
  	self.role ||= 0
  end

end
