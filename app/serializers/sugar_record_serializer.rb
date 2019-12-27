class SugarRecordSerializer < ActiveModel::Serializer
  attributes :id,:value,:date

  has_one :comment
end
