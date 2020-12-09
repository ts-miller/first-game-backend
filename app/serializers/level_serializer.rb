class LevelSerializer < ActiveModel::Serializer
  attributes :id, :name, :bricks
  belongs_to :user


  def bricks
    self.object.bricks.map do |brick|
      {x: brick.x,
      y: brick.y,
      status: brick.status}
    end
  end
end
