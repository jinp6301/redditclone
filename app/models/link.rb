class Link < ActiveRecord::Base
  attr_accessible :body, :title, :url

  has_many :subs
  
end
