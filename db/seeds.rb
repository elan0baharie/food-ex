Product.destroy_all
Review.destroy_all

def product_price
  var = rand(1..7)
  return var
end

def rating_number
  var = rand(1..5)
  return var
end

def review_id
  var = rand(1..49)
  return var
end

def provide_id
  if @product = Product.find(review_id)
    p "here"
    return @product.id
  elsif @product = Product.find(review_id) == nil
    p "over here"
    provide_id
  end
end


50.times do |index|
  test = Product.create!(

    name: Faker::Food.ingredient,
    cost: product_price,
    country: Faker::Address.country
  )
  5.times do |index|
    Review.create!(
      author: Faker::LordOfTheRings.character,
      rating: rating_number,
      content: Faker::Lorem.sentence(25),
      product_id: test.id
    )
  end
end
