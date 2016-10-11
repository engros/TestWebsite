class User < ActiveRecord::Base
 before_save { self.email = email.downcase }
  validates :name, presence: true, length: { maximum: 50 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
  validates :email, presence:   true, length: { maximum: 255 },
           format:     { with: VALID_EMAIL_REGEX },
           uniqueness: { case_sensitive: false }
 has_secure_password
 validates :password, presence: true, length: { minimum: 8 }
 validates :password_confirmation, presence: true
end

# before_save
# presence: true , constraint making sure that name cannot be empty before going to database (must be present)
# length: { maximum: 50 } , constraint to limit characters
# VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i , constant containing pragmatic regex for matching email addresses according to the official email standard
# format: { with: VALID_EMAIL_REGEX } , ensures that only email addresses that match the pattern will be considered valid.
# uniqueness: true, emails should not have duplicates.
# uniqueness: { case_sensitive: false }, turns off case-sensitivity so emails such as FOOBAR@example.com is the same as foobar@example.com. Rails infer that uniqueness also must be true.
# has_secure_password, ses a state-of-the-art hash function called bcrypt. By hashing the password with bcrypt, we ensure that an attacker won’t be able to log in to the site even if they manage to obtain a copy of the database.
# validates :password, presence: true, length: { minimum: 6 } , set minimum password to 6 characters
