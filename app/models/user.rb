class User < ApplicationRecord
  include Devise::JWT::RevocationStrategies::JTIMatcher
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :omniauthable,
         :jwt_authenticatable, jwt_revocation_strategy: self
  has_many :shows
  has_many :promoters, through: :shows
end

# JTIMatcher
# Here, the model class acts itself as the revocation strategy. It needs a new string column with name jti to be added to the user. jti stands for JWT ID, and it is a standard claim meant to uniquely identify a token.

# It works like the following:

# When a token is dispatched for a user, the jti claim is taken from the jti column in the model (which has been initialized when the record has been created).
# At every authenticated action, the incoming token jti claim is matched against the jti column for that user. The authentication only succeeds if they are the same.
# When the user requests to sign out its jti column changes, so that provided token won't be valid anymore.
# In order to use it, you need to add the jti column to the user model. So, you have to set something like the following in a migration:

# TODO:  may need to add jti_payload method to the user model
