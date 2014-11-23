require 'faker'
# require_relative '../../config/application'
require_relative '../app/models/list'
require_relative '../app/models/task'

newlist = List.create(list_name: "To-do list No. " + "#{List.count}")

5.times do
	sentence = Faker::Lorem.sentence(5)
	Task.create(task_text: sentence, complete: false, list_id: rand(1..List.count))
end