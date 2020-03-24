class User < ApplicationRecord
    has_many :cards, dependent: :destroy
    has_many :comments
    validates :username, uniqueness: true
    has_secure_password
end
