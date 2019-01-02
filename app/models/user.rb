class User < ApplicationRecord
    before_save { self.email.downcase! }
    validates :name, presence: :true, length: {minimum: 3, maximum: 25}
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
    validates :email, presence: :true, length: {minimum: 3, maximum: 256}, format: {with: VALID_EMAIL_REGEX}, uniqueness: {case_sensitive: false}
    has_secure_password
    validates :password, presence: :true, length: { minimum: 6, maximum: 15}
end
