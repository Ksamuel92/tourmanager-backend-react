class PromoterSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :slug
  has_many :shows
end
