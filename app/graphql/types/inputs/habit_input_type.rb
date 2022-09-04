module Types
  module Inputs
    class HabitInputType < Types::BaseInputObject
      argument :id,    Int,    required: true
      argument :name,  String, required: false
    end
  end
end
