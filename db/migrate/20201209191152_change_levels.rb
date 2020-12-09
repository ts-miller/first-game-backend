class ChangeLevels < ActiveRecord::Migration[6.0]
  def change
    change_table :levels do |t|
      t.remove :difficulty, :integer
    end
  end
end
