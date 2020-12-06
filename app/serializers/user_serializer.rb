class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :levels
  def levels
    self.object.levels.map do |level|
      {level_id: level.id,
      level_name: level.name,
      level_difficulty: level.difficulty}
    end
  end
end
