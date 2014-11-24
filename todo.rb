<<<<<<< HEAD
require_relative 'config/application'
require_relative 'app/models/list'
require_relative 'app/controller/tasks_controller'

a = ARGV

case a[0]
when "list" then TasksController.list
when "add" then TasksController.add(a[1..-1].join(" "))
  TasksController.list
when "delete" then TasksController.delete(a[1].to_s)
  TasksController.list
when "complete" then TasksController.complete(a[1])
  puts "TODO UPDATE =>>>>> Woohoo, you have completed #{a[1]}."
  TasksController.list
else
  puts "The todo tracker doesn't recognise your command, start again!"
=======
require_relative '../../config/application'
require_relative 'list'


case ARGV[0]
when list then list.list
when add then list.add
when delete then list.delete
when complete then list.complete
>>>>>>> 2ccd9ea7a1986856c6ea1525f994c4dd92e79f9c
end