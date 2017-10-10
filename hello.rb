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

# Store result in a variable
graphql_result = Schema.execute('{ hello }')

# Convert result to hash
graphql_result_hash = graphql_result.to_h

# Output value of the hello query
puts graphql_result["data"]["hello"]