class User < ApplicationRecord

  # Use before_save to convert email letters to lowercase before saving it to DB
  before_save { email.downcase! }

  # the code from above can be written like code below. Expalnation why:
  # The exclamation point ! is often used to indicate methods that mutate the
  # object in question. In this case, email.downcase! modifies the email
  # attribute in place.
  #
  # before_save { self.email = email.downcase }

  has_secure_password
  validates :password, presence: true, length: { minimum: 6 }

  validates :name, presence: true, length: { maximum: 50 }

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 255 },
                  format: { with: VALID_EMAIL_REGEX },
                  uniqueness: { case_sensitive: false }

  # Returns the hash digest of the given string.
  def User.digest(string)
    cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST :
                                                  BCrypt::Engine.cost
    BCrypt::Password.create(string, cost: cost)
  end

  # Returns a random token
  def User.new_token
    SecureRandom.urlsafe_base64
  end

end
