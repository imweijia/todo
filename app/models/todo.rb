require_relative '../../config/application'
require_relative 'list'

a = ARGV

case a[0]
when "list" then List.list
when "add" then List.add(a[1..-1].join(" "))
	List.list
when "delete" then List.delete(a[1].to_s)
	List.list
when "complete" then List.complete(a[1])
	puts "TODO UPDATE =>>>>> Woohoo, you have completed #{a[1]}."
	List.list
else
	puts "The todo tracker doesn't recognise your command, start again!"
end