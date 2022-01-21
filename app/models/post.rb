class Post < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions 
  belongs_to :user
  belongs_to :genre

  def self.search(search)
    if search != ''
      Post.where('title LIKE(?)', "%#{search}%")
    else
      Post.all
    end
  end
end
