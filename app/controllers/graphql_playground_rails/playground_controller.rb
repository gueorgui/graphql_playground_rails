# frozen_string_literal: true

require_dependency 'graphql_playground_rails/application_controller'

module GraphqlPlaygroundRails
  class PlaygroundController < ApplicationController
    def show; end

    helper_method :graphql_endpoint_path
    def graphql_endpoint_path
      params[:graphql_path] || raise(
        %(You must include `graphql_path: "/my/endpoint"` when mounting GraphqlPlaygroundRails)
      )
    end
  end
end
