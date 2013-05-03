require 'test_helper'

module ContactPage
  class ContactMessagesControllerTest < ActionController::TestCase
    test "should get index" do
      get :index
      assert_response :success
    end
  
  end
end
