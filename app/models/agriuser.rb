class Agriuser < ActiveRecord::Base
    validates:name, presence:true
    validates:email, presence:true,uniqueness:true
    def self.authenticate(name, email)
    end
end
