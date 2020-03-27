class CommentSerializer < ActiveModel::Serializer
  attributes :id, :comment_text, :user, :comment_username
  has_one :user
  belongs_to :card


  def comment_username
    object.user.username
  end

 


end
