class User < ActiveRecord::Base
  before_save { email.downcase! }
  validates :name, presence: true, length: { maximum: 50 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
  validates :email, presence:   true, length: { maximum: 255 },
            format:     { with: VALID_EMAIL_REGEX },
            uniqueness: { case_sensitive: false }

end

# before_save
# presence: true , constraint making sure that name cannot be empty before going to database (must be present)
# length: { maximum: 50 } , constraint to limit characters
# VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i , constant containing pragmatic regex for matching email addresses according to the official email standard
# format: { with: VALID_EMAIL_REGEX } , ensures that only email addresses that match the pattern will be considered valid.
# uniqueness: true, emails should not have duplicates.
# uniqueness: { case_sensitive: false }, turns off case-sensitivity so emails such as FOOBAR@example.com is the same as foobar@example.com. Rails infer that uniqueness also must be true.
# has_secure_password
