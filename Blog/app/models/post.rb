class Post < ActiveRecord::Base
  has_many :comments


  validates :content, :presence => true, :length => { :minimum => 5 }
  validates :title, :presence => true, :length => { :minimum =>5 }
  validates :name, :presence => true
end
