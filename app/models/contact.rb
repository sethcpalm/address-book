class Contact < ApplicationRecord
    validates :fname, :lname, presence: true
end
