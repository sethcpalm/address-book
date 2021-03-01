class Contact < ApplicationRecord
    belongs_to :user
    validates :fname, :lname, presence: true
end
