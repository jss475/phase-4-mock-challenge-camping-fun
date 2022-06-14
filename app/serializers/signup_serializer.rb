class SignupSerializer < ActiveModel::Serializer
  attributes :id, :name, :difficulty
  
  def id
    object.activity.id
  end

  def name
    object.activity.name
  end

  def difficulty
    object.activity.difficulty
  end
end
