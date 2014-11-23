require_relative '../../config/application'
require_relative 'list'


case ARGV[0]
when list then list.list
when add then list.add
when delete then list.delete
when complete then list.complete
end