require 'test_helper'

class OdrderProductsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @odrder_product = odrder_products(:one)
  end

  test "should get index" do
    get odrder_products_url
    assert_response :success
  end

  test "should get new" do
    get new_odrder_product_url
    assert_response :success
  end

  test "should create odrder_product" do
    assert_difference('OdrderProduct.count') do
      post odrder_products_url, params: { odrder_product: { order_id: @odrder_product.order_id, product_id: @odrder_product.product_id } }
    end

    assert_redirected_to odrder_product_url(OdrderProduct.last)
  end

  test "should show odrder_product" do
    get odrder_product_url(@odrder_product)
    assert_response :success
  end

  test "should get edit" do
    get edit_odrder_product_url(@odrder_product)
    assert_response :success
  end

  test "should update odrder_product" do
    patch odrder_product_url(@odrder_product), params: { odrder_product: { order_id: @odrder_product.order_id, product_id: @odrder_product.product_id } }
    assert_redirected_to odrder_product_url(@odrder_product)
  end

  test "should destroy odrder_product" do
    assert_difference('OdrderProduct.count', -1) do
      delete odrder_product_url(@odrder_product)
    end

    assert_redirected_to odrder_products_url
  end
end
