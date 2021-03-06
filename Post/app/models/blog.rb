class Blog < ActiveRecord::Base
  attr_accessible :content, :name, :title
  validates :name,  :presence => true
  validates :title, :presence => true,
                    :length => { :minimum => 10 }
					
	has_many :comments
end
