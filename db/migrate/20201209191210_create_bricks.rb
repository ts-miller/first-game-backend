class CreateBlocks < ActiveRecord::Migration[6.0]
  def change
    create_table :bricks do |t|
      t.integer :x
      t.integer :y
    end
  end
end
