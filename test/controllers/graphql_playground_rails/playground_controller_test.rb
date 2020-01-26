require 'test_helper'

module GraphqlPlaygroundRails
  class PlaygroundControllerTest < ActionDispatch::IntegrationTest
    include Engine.routes.url_helpers

    test "should get show" do
      get playground_show_url
      assert_response :success
    end

  end
end
