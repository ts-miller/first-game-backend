class LevelSerializer < ActiveModel::Serializer
  attributes :id, :name, :bricks, :user

  def bricks
    self.object.bricks.map do |brick|
      {x: brick.x,
      y: brick.y,
      status: brick.status}
    end
  end

  def user
    {id: self.object.user.id,
    name: self.object.user.name}
  end
end
