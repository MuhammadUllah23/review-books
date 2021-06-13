class User < ActiveRecord::Base
    has_many :reviews
    has_many :books, through: :reviews
    validates :username, :password, presence: true
    validates_uniqueness_of :username
    has_secure_password
    
end