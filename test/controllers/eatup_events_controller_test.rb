require 'test_helper'

class EatupEventsControllerTest < ActionController::TestCase
  setup do
    @eatup_event = eatup_events(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:eatup_events)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create eatup_event" do
    assert_difference('EatupEvent.count') do
      post :create, eatup_event: { chef: @eatup_event.chef, date: @eatup_event.date, description: @eatup_event.description, name: @eatup_event.name, price: @eatup_event.price }
    end

    assert_redirected_to eatup_event_path(assigns(:eatup_event))
  end

  test "should show eatup_event" do
    get :show, id: @eatup_event
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @eatup_event
    assert_response :success
  end

  test "should update eatup_event" do
    patch :update, id: @eatup_event, eatup_event: { chef: @eatup_event.chef, date: @eatup_event.date, description: @eatup_event.description, name: @eatup_event.name, price: @eatup_event.price }
    assert_redirected_to eatup_event_path(assigns(:eatup_event))
  end

  test "should destroy eatup_event" do
    assert_difference('EatupEvent.count', -1) do
      delete :destroy, id: @eatup_event
    end

    assert_redirected_to eatup_events_path
  end
end
