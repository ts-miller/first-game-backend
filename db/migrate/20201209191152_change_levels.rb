class ChangeLevels < ActiveRecord::Migration[6.0]
  def change
    t.remove :difficulty
  end
end
