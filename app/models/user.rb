class User < ApplicationRecord
    validates :username, presence: true, uniqueness: true, length: { maximum: 25}
    validates :email, presence: true, uniqueness: true
    validates :password, presence: true, length: { maximum: 6}

end
