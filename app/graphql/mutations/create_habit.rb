module Mutations
  class CreateHabit < BaseMutation
    field: habit, Types::HabitType, null: false

    argument :title, String, required: true

    def resolve(**params)
      habit = Habit.create!(params)
      { habit: habit }
    end
  end
end
