class IndividualCamperSerializer < ActiveModel::Serializer
  attributes :id, :name, :age

  has_many :activities, through: :signups
end