class CardSerializer < ActiveModel::Serializer
  attributes :id, :content_url, :card_title, :message, :user
  has_one :user
end
