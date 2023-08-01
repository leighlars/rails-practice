class User < ApplicationRecord
  include Visible

  validates :username, presence: true
  validates :password, presence: true, length: { minimum: 10 }
  validates :email, presence: true, length: { minimum: 10 }

  has_many :articles, dependent: :destroy
end
