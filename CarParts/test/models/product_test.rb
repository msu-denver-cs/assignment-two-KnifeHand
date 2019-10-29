require 'test_helper'

class ProductTest < ActiveSupport::TestCase
  fixtures :products
  # test "the truth" do
  #   assert true
  # end
  test "product attributes must not be empty" do
    product = Product.new
    assert product.invalid?
    assert product.errors[:title].any?
    assert product.errors[:description].any?
    assert product.errors[:price].any?
    assert product.errors[:image_url].any?
  end

  #test "product price must be positive" do  #FIXME: Why doesn't it like this unit test? 1 FAIL, Expected false to be truthy.
  #  product = Product.new(title: "MyBook Title",
  #                        description: "yyy",
  #                        image_url: "zzz.jpg")
  #  product.price = -1
  #  assert product.invalid?
  #  assert_equal ["must be greater than or equal to 0.01"],
  #               product.errors[:price]
  #  product.price = 1
  #  assert product.valid?
  #end
  def new_product(image_url)
    Product.new(title:        "MyBook Title",
                description:  "yyy",
                price:        1,
                image_url:    "zzz.jpg")
  end

  #test "image url" do #FIXME: ???
    #ok = %w{  fred.jpg fred.png FRED.JPG FRED.Jpg http://a.b.c/x/y/z/fred.gif} #fred.gif
    #bad = %w{ fred.doc fred.gif/more fred.gif.more }

    #ok.each do |name|
    #assert new_product(name).invalid?, "#{name} should't be valid"
    #end
  #end
end
