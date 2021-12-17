class PromoterSerializer < ActiveModel::Serializer
  attributes :id, :name, :email
  has_many :shows
  has_many :users
end
