module Mutations
  class UpdateHabit < BaseMutation
    field :habit, Types::HabitType, null: true

    argument :id,   Integer, required: true
    argument :name, String,  required: true

    def resolve(**params)
      habit = Habit.find(params[:id])
      habit.update!(name: params[:name])
      { habit: habit}
    end
  end
end
