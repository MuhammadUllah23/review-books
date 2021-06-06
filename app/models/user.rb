class User < ActiveRecord::Base
    has_many :reviews
    validates :username, :password, presence: true
    has_secure_password
    
end