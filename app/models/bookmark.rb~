class Bookmark < ActiveRecord::Base
	validates_presence_of :url
	validates_length_of :url, :minimum=>10
	validates_length_of :name, :maximum=>100
end
