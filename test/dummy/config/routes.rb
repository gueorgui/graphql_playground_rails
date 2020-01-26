Rails.application.routes.draw do
  mount GraphqlPlaygroundRails::Engine => "/graphql_playground_rails"
end
