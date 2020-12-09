class CreateBricks < ActiveRecord::Migration[6.0]
  def change
    create_table :bricks do |t|
      t.references :level, null: false, foreign_key: true
      t.integer :x
      t.integer :y
      t.integer :status
    end
  end
end
