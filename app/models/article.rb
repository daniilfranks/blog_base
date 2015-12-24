class Article < ActiveRecord::Base
  has_many :comments, as: :commentable
  validates :title, presence: true,
            length: { minimum: 5 }
  validates :text, presence: true

  def subject
    title
  end

  def last_comment
    comments.last
  end
end
