class LiftSerializer < ActiveModel::Serializer
  attributes :id, :exercise, :weight, :reps
  has_one :user
end
