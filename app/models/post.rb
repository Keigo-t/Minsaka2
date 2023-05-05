class Post < ApplicationRecord

  belongs_to :user
  has_many :comments, dependent: :destroy
  has_many :favorites, dependent: :destroy

  def favorites?(user)
    favorites.where(user_id: user.id).exists?
  end

  def self.looks(search, word)
    if search == "perfect_match"
      @post = Post.where("post LIKE?", "#{word}")
    elsif search == "partial_match"
      @post = Post.where("post LIKE?","%#{word}%")
    else
      flash[:notice]="検索した内容がありません"
      @post = Post.all
    end
  end

end
