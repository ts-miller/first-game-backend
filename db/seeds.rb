# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Level.destroy_all


tyler = User.create(name: 'Tyler', high_score: 8300)
tyler.levels.build(name: 'crazy level').save

bricks = [
    {x: 0, y: 0, status: 1},
    {x: 50, y: 0, status: 1}
]

bricks.each do |brick|
    Brick.create(level_id: 1, x: brick[:x], y: brick[:y], status: 1)
end