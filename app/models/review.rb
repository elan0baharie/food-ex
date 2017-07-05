class Review < ActiveRecord::Base
  belongs_to :product

  validates :name, :presence => true
  validates :author, :presence => true
  validates :content, :presence => true
end
