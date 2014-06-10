User.delete_all
User.create("name" => "testuser", "username" => "testuser", "password" => "testuser")

Goal.delete_all
gs = Goal.create("outcome" => "Get in shape", "user_id" => User.first.id)
mt = Goal.create("outcome" => "Make time for myself", "user_id" => User.first.id)

Strategy.delete_all
s1 = Strategy.create("description" => "Cardio exercise", "frequency" => "4", "goal_id" => gs.id)
s2 = Strategy.create("description" => "Strength training exercise", "frequency" => "3", "goal_id" => gs.id)
s3 = Strategy.create("description" => "Sleep 7 hours a night", "frequency" => "7", "goal_id" => mt.id)

Effort.delete_all
Effort.create("date" => Date.parse("2014/06/10"), "value" => 0, "goal_id" => gs.id, "strategy_id" => s2.id)
Effort.create("date" => Date.parse("2014/06/11"), "value" => 1, "goal_id" => mt.id, "strategy_id" => s3.id)
Effort.create("date" => Date.parse("2014/06/12"), "value" => 0, "goal_id" => gs.id, "strategy_id" => s1.id)
Effort.create("date" => Date.parse("2014/04/10"), "value" => 0, "goal_id" => gs.id, "strategy_id" => s1.id)
Effort.create("date" => Date.parse("2014/04/11"), "value" => 0, "goal_id" => gs.id, "strategy_id" => s2.id)
Effort.create("date" => Date.parse("2014/04/12"), "value" => 1, "goal_id" => mt.id, "strategy_id" => s3.id)
Effort.create("date" => Date.parse("2014/05/10"), "value" => 1, "goal_id" => gs.id, "strategy_id" => s1.id)
Effort.create("date" => Date.parse("2014/05/11"), "value" => 1, "goal_id" => gs.id, "strategy_id" => s2.id)
Effort.create("date" => Date.parse("2014/05/12"), "value" => 1, "goal_id" => mt.id, "strategy_id" => s3.id)


# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
