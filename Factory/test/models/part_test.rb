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
  #   assert true
  # end
end
