require 'test_helper'

class PartsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @part = part(:one)
    @update = {
        title:        'Lorem Ipsum',
        description:  'Wibbles are fun!',
        image_url:    'lorem.jpg',
        price:        19.95
    }
  end

  test "should get index" do
    get part_url
    assert_response :success
  end

  test "should get new" do
    get new_part_url
    assert_response :success
  end

  test "should create part" do
    assert_difference('Part.count') do
      post part_url, params: { part: {part: @part.part,
                                      title: @part.title,
                                      description: @part.description,
                                      image_url: @part.image_url,
                                      price: @part.price}
      }

    assert_redirected_to part_url(Part.last)
  end

  test "should show part" do
    get part_url(@part)
    assert_response :success
  end

  test "should get edit" do
    get edit_part_url(@part)
    assert_response :success
  end

  test "should update part" do
    patch part_url(@part), params: { part: @update}
    assert_redirected_to part_url(@part)
  end

  test "should destroy part" do
    assert_difference('Part.count', -1) do
      delete part_url(@part)
    end

    assert_redirected_to part_url
  end
end
end