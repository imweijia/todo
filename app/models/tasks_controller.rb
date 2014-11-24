require_relative '../../config/application'
require_relative '../models/task'
require_relative '../models/list'

class Controller
    def self.list
        if Task.count == 0
          puts "TO-DO LIST IS EMPTY."
        else
          puts "TO-DO LIST:"
          Task.all.each do |t|
            puts "#{t.id}. "+
            if t.complete == true
              "[X] " + "#{t.task_text}"
            else
              "[ ] " + "#{t.task_text}"
            end
          end
        end
      end

      def self.add(sentence)
        t = Task.create(task_text: sentence, complete: false)
      end

      def self.delete(item)
        Task.destroy(item)
      end

      def self.complete(item)
        t = Task.find(item)
        t.complete = true
        t.save
      end

end