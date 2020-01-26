# GraphqlPlaygroundRails

This is a Rails Engine that simply mounts the [GraphQL
Playground](https://github.com/prisma-labs/graphql-playground) inside your Rails
app.

There are several other gems doing the same thing, but somehow I haven't been
able to make any of them work in Rails 6.0.

## Usage
Mount it in your Rails app by editing `config/routes.rb` as such:

``` ruby
Rails.application.routes.draw do
  # (...)
  if Rails.env.development?
    mount GraphqlPlaygroundRails::Engine, at: '/gql', graphql_path: '/graphql'
  end
end
```

You will be able to access the playground at `http://localhost:3000/gql` after
you restart your Rails server.

## Installation
Add this line to your application's Gemfile:

```ruby
gem 'graphql_playground_rails'
```

And then execute:
```bash
$ bundle
```

Or install it yourself as:
```bash
$ gem install graphql_playground_rails
```

## Acknowledgements
The structure of the engine has been inspired by
[graphiql-rails](https://github.com/rmosolgo/graphiql-rails), which mounts
[GraphiQL](https://github.com/graphql/graphiql) rather than GraphQL Playground.
The code to show the GraphQL Playground comes from the [graphql-playground
repository](https://github.com/prisma-labs/graphql-playground/blob/master/packages/graphql-playground-html/withAnimation.html).

## Contributing
Pull requests are welcome.

## License
The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
