require 'test_helper'

class EatupTicketsControllerTest < ActionController::TestCase
  setup do
    @eatup_ticket = eatup_tickets(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:eatup_tickets)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create eatup_ticket" do
    assert_difference('EatupTicket.count') do
      post :create, eatup_ticket: { eatup_event_id: @eatup_ticket.eatup_event_id, eatup_user_id: @eatup_ticket.eatup_user_id, ticket_number: @eatup_ticket.ticket_number }
    end

    assert_redirected_to eatup_ticket_path(assigns(:eatup_ticket))
  end

  test "should show eatup_ticket" do
    get :show, id: @eatup_ticket
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @eatup_ticket
    assert_response :success
  end

  test "should update eatup_ticket" do
    patch :update, id: @eatup_ticket, eatup_ticket: { eatup_event_id: @eatup_ticket.eatup_event_id, eatup_user_id: @eatup_ticket.eatup_user_id, ticket_number: @eatup_ticket.ticket_number }
    assert_redirected_to eatup_ticket_path(assigns(:eatup_ticket))
  end

  test "should destroy eatup_ticket" do
    assert_difference('EatupTicket.count', -1) do
      delete :destroy, id: @eatup_ticket
    end

    assert_redirected_to eatup_tickets_path
  end
end
