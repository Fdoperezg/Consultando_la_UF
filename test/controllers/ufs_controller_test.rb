require 'test_helper'

class UfsControllerTest < ActionDispatch::IntegrationTest
  test "should get question" do
    get ufs_question_url
    assert_response :success
  end

end
