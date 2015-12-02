class Post < ActiveRecord::Base
  has_many :comments
  belongs_to :user


  validates :content, :presence => true, :length => { :minimum => 5 }
  validates :title, :presence => true, :length => { :minimum =>5 }

end
