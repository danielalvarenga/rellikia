require 'test_helper'

class EntryDetailsControllerTest < ActionController::TestCase
  setup do
    @entry_detail = entry_details(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:entry_details)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create entry_detail" do
    assert_difference('EntryDetail.count') do
      post :create, entry_detail: { amount: @entry_detail.amount, amount_paid: @entry_detail.amount_paid, day: @entry_detail.day, day_paid: @entry_detail.day_paid, entry_id: @entry_detail.entry_id, month: @entry_detail.month, month_paid: @entry_detail.month_paid, year: @entry_detail.year, year_paid: @entry_detail.year_paid }
    end

    assert_redirected_to entry_detail_path(assigns(:entry_detail))
  end

  test "should show entry_detail" do
    get :show, id: @entry_detail
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @entry_detail
    assert_response :success
  end

  test "should update entry_detail" do
    patch :update, id: @entry_detail, entry_detail: { amount: @entry_detail.amount, amount_paid: @entry_detail.amount_paid, day: @entry_detail.day, day_paid: @entry_detail.day_paid, entry_id: @entry_detail.entry_id, month: @entry_detail.month, month_paid: @entry_detail.month_paid, year: @entry_detail.year, year_paid: @entry_detail.year_paid }
    assert_redirected_to entry_detail_path(assigns(:entry_detail))
  end

  test "should destroy entry_detail" do
    assert_difference('EntryDetail.count', -1) do
      delete :destroy, id: @entry_detail
    end

    assert_redirected_to entry_details_path
  end
end
