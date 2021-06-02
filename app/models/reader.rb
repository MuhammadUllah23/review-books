class Reader < ActiveRecord::Base
    has_many :reviews
    has_secure_password
end