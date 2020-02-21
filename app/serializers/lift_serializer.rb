class LiftSerializer < ActiveModel::Serializer
  attributes :id, :type, :weight, :reps
  has_one :user
end
