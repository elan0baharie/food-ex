class Review < ActiveRecord::Base
  belongs_to :product

  validates :rating, :presence => true
  validates :author, :presence => true
  validates :content, :presence => true, :length => {:minimum =>50, :maximum => 250}
end
