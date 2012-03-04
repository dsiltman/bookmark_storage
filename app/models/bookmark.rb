class Bookmark < ActiveRecord::Base
	validates :url, 		:presence => true,
										:length   => { :minimum => 10 } 
	validates :name,  :length   => { :maximum => 100 }

end
