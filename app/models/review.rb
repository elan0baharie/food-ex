class Review < ActiveRecord::Base
  belongs_to :product

  validates :rating, :presence => true
  validates :author, :presence => true
  validates :content, :presence => true
end
