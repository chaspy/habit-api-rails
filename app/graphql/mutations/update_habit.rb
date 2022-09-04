module Mutations
  class UpdateHabit < BaseMutation
    field :habit, Types::HabitType, null: false

    argument :params, Types::Inputs::HabitInputType, required: true

    def resolve(params:)
      habit_params = params.to_h
      habit = Habit.find(habit_params.delete(:id))
      habit.update!(habit_params.compact)
      habit
    end
  end
end
