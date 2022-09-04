module Types
  class MutationType < Types::BaseObject
    field :update_habit, mutation: Mutations::UpdateHabit
    field :create_habit, mutation: Mutations::CreateHabit
    field :delete_habit, mutation: Mutations::DeleteHabit
    # TODO: remove me
    field :test_field, String, null: false,
      description: "An example field added by the generator"
    def test_field
      "Hello World"
    end
  end
end
