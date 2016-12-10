class User < ApplicationRecord

  # Use before_save to convert email letters to lowercase before saving it to DB
  before_save { email.downcase! }

  # the code from above can be written like code below. Expalnation why:
  # The exclamation point ! is often used to indicate methods that mutate the
  # object in question. In this case, email.downcase! modifies the email 
  # attribute in place.
  #
  # before_save { self.email = email.downcase }

  validates :name, presence: true, length: { maximum: 50 }

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 255 },
                  format: { with: VALID_EMAIL_REGEX },
                  uniqueness: { case_sensitive: false }
end
