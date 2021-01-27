class DaySerializer < ActiveModel::Serializer
  attributes :id, :name_of_day, :date, :total_hours_fasted
end
