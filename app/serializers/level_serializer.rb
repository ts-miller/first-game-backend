class LevelSerializer < ActiveModel::Serializer
  attributes :id, :name, :blocks
  def blocks
    self.object.blocks.map do |block|
      {x: block.x,
      y: block.y,
      status: block.status}
    end
  end
end
