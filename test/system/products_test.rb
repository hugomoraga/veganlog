require "application_system_test_case"

class ProductsTest < ApplicationSystemTestCase
  setup do
    @product = products(:one)
  end

  test "visiting the index" do
    visit products_url
    assert_selector "h1", text: "Products"
  end

  test "creating a Product" do
    visit products_url
    click_on "New Product"

    fill_in "Addressid", with: @product.addressId
    fill_in "Category", with: @product.category
    fill_in "Comercialname", with: @product.comercialName
    fill_in "Description", with: @product.description
    fill_in "Imgurl", with: @product.imgUrl
    fill_in "Ingredients", with: @product.ingredients
    fill_in "Markname", with: @product.markName
    fill_in "Price", with: @product.price
    fill_in "Productname", with: @product.productName
    fill_in "Storeid", with: @product.storeId
    fill_in "Totalscore", with: @product.totalScore
    fill_in "Userid", with: @product.userId
    click_on "Create Product"

    assert_text "Product was successfully created"
    click_on "Back"
  end

  test "updating a Product" do
    visit products_url
    click_on "Edit", match: :first

    fill_in "Addressid", with: @product.addressId
    fill_in "Category", with: @product.category
    fill_in "Comercialname", with: @product.comercialName
    fill_in "Description", with: @product.description
    fill_in "Imgurl", with: @product.imgUrl
    fill_in "Ingredients", with: @product.ingredients
    fill_in "Markname", with: @product.markName
    fill_in "Price", with: @product.price
    fill_in "Productname", with: @product.productName
    fill_in "Storeid", with: @product.storeId
    fill_in "Totalscore", with: @product.totalScore
    fill_in "Userid", with: @product.userId
    click_on "Update Product"

    assert_text "Product was successfully updated"
    click_on "Back"
  end

  test "destroying a Product" do
    visit products_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Product was successfully destroyed"
  end
end
