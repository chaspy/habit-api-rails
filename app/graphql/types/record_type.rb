# frozen_string_literal: true

module Types
  class RecordType < Types::BaseObject
    field :id, ID, null: false
    field :date, GraphQL::Types::ISO8601Date, null: false
    field :habit_id, Integer, null: false
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
