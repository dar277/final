Goal.delete_all
gs = Goal.create("outcome" => "Get in shape")
mt = Goal.create("outcome" => "Make time for myself")

Strategy.delete_all
s1 = Strategy.create("description" => "I do cardio 4 times a week", "goal_id" => gs.id)
s2 = Strategy.create("description" => "I do strength training 3 times a week", "goal_id" => gs.id)
s3 = Strategy.create("description" => "I sleep 7 hours a night", "goal_id" => mt.id)

Effort.delete_all
Effort.create("date" => 20140512, "value" => 0, "goal_id" => gs.id, "strategy_id" => s1.id)
Effort.create("date" => 20140512, "value" => 0, "goal_id" => gs.id, "strategy_id" => s2.id)
Effort.create("date" => 20140512, "value" => 1, "goal_id" => mt.id, "strategy_id" => s3.id)
Effort.create("date" => 20140513, "value" => 0, "goal_id" => gs.id, "strategy_id" => s1.id)
Effort.create("date" => 20140513, "value" => 0, "goal_id" => gs.id, "strategy_id" => s2.id)
Effort.create("date" => 20140513, "value" => 1, "goal_id" => mt.id, "strategy_id" => s3.id)
Effort.create("date" => 20140514, "value" => 1, "goal_id" => gs.id, "strategy_id" => s1.id)
Effort.create("date" => 20140514, "value" => 1, "goal_id" => gs.id, "strategy_id" => s2.id)
Effort.create("date" => 20140514, "value" => 1, "goal_id" => mt.id, "strategy_id" => s3.id)

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
