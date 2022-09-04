module Mutations
  class DeleteHabit < BaseMutation
    field :habit, Types::HabitType, null: true

    argument :id,   Integer, required: true

    def resolve(**params)
      habit = Habit.find(params[:id])
      habit.destroy
      { habit: habit}
    end
  end
end
