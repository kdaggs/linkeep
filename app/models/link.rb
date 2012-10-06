class Link < ActiveRecord::Base
  attr_accessible :created, :name, :url
  validates :url, presence: true
  validates :name, presence: true
  validates :url, :length => { :minimum => 10 }
  validates :name, :length => { :maximum => 100 }
end
