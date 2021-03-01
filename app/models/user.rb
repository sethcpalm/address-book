class User < ApplicationRecord

    has_many :contacts
    has_secure_password

    validates_uniqueness_of :username, :case_sensitive => false
    validates :password, length: { minimum: 8 }, if: :password_digest_changed?

end
