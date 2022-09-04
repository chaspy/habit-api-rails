module Resolvers
  class HabitResolver < Resolvers::BaseResolver
    description 'Find a habit by ID'
    type Types::HabitType, null: false

    argument :id, ID, required: true

    def resolve(id:)
      Habit.find(id)
    end
  end
end
