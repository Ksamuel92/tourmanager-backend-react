class ShowSerializer < ActiveModel::Serializer
  attributes :id, :venue, :date, :loadin, :guarantee, :merch, :green_room, :wifi
  belongs_to :promoter
  belongs_to :user
end
