class User < ApplicationRecord
  # добавление методов работы с ролями
  include Roleable

  PASSWORD_LENGTH = (5..20)

  # validations
  validates_presence_of :username
  validates_presence_of :role
  validates :password, length: PASSWORD_LENGTH, allow_nil: true # skip validation if value is nil

  has_many :bookmarks
  
  attr_reader :password

  # class method
  def self.find_from_credentials(username, password)
    user = User.find_by(username: username)
    return nil unless user
    user if user.is_password?(password)
  end

  # confirm password
  def is_password?(password_attempt)
    BCrypt::Password.new(password_digest).is_password?(password_attempt)
  end

  # set password digest
  def password=(raw_password)
    self.password_digest = BCrypt::Password.create(raw_password)
  end
end