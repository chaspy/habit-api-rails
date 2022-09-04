module Mutations
  class CreateHabit < BaseMutation
    field :habit, Types::HabitType, null: false

    argument :name, String, required: true

    def resolve(**params)
      habit = Habit.create!(params)
      { habit: habit }
    end
  end
end
