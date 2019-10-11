require 'test_helper'

class PartTest < ActiveSupport::TestCase
  test "part attributes must not be empty" do
    part = Parts.new
    assert part.invalid?
    assert part.errors[:title].any?
    assert part.errors[:description].any?
    assert part.errors[:price].any?
    assert part.errors[:image_url].any?
  end

  def new_part(image_url)
    Part.new(title: "Part Title",
                description: "yyy",
                price: 1,
                image_url: image_url)
  end

  test "part price must be positive" do
    part = Part.new(title: "My Book Title",
                          description: "yyy",
                          image_url: "zzz.jpg")
    part.price = -1
    assert part.invalid?
    assert_equal ["must be greater than or equal to 0.01"],
                 part.errors[:price]
    part.price = 0
    assert part.invalid?
    assert_equal ["must be greater than or equal to 0.01"],
                 part.errors[:price]
    part.price = 1
    assert part.valid?
  end

  test "image url" do
    ok = %w{ fred.gif fred.jpg fred.png FRED.JPG FRED.Jpg
             http://a.b.c/x/y/z/fred.gif }
    bad = %w{ fred.doc fred.gif/more fred.gif.more }
    ok.each do |name|
      assert new_part(name).valid?, "#{name} shouldn't be invalid"
    end

    bad.each do |name|
      assert new_part(name).invalid?, "#{name} shouldn't be valid"
    end

    test "product is not valid without a unique title" do
      part = Part.new(title: part(:ruby).title,
                            description: "yyy",
                            price: 1,
                            image_url: "fred.gif")
      assert part.invalid?
      assert_equal ["has already been taken"], part.errors[:title]
    end
  end
end
