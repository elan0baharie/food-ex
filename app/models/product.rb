class Product < ActiveRecord::Base
  has_many :reviews

  validates :name, :presence => true
  validates :cost, :presence => true
  validates :country, :presence => true



  scope :most_recent_products, -> { order(created_at: :desc).limit(3)}

  scope :local_country, -> {
    where("country like ?", "USA")
  }

  scope :most_reviews, -> {(
      select("products.id, products.name, products.country, count(reviews.id) as reviews_count")
      .joins(:reviews)
      .group('products.id')
      .order('reviews_count DESC')
      .limit(2)
    )}
end
