class User < ActiveRecord::Base
    validates :username,    presence: true, uniqueness: true, length: { maximum: 20}
    validates :email,       presence: true
    validates :password,    presence: true, length: { minimum: 6}
    has_many    :posts
    has_many    :comments
end
