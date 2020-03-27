class CardSerializer < ActiveModel::Serializer
  attributes :id, :content_url, :card_title, :message, :user, :created_at, :comments
  has_one :user
  has_many :comments

  # def user_from_comments
  #   comments = Comment.all
  #   cards = Card.all
  #   user = comments.map()
  # end

end
