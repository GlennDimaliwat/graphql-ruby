# graphql-ruby 
## A Ruby library for building GraphQL APIs.

To run a hello world script with graphql-ruby:

`gem install graphql`       

Then run ruby hello.rb with this code in hello.rb:

```
require 'graphql'

QueryType = GraphQL::ObjectType.define do
  name 'Query'
  field :hello do
    type types.String
    resolve -> (obj, args, ctx) { 'Hello world!' }
  end
end

Schema = GraphQL::Schema.define do
  query QueryType
end

puts Schema.execute('{ hello }')
```