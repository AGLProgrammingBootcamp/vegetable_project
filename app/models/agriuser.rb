class Agriuser < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
    validates:name, presence:true
    validates:email, presence:true,uniqueness:true
    def self.authenticate(name, email)
    end
end
