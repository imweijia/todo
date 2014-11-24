require_relative '../../config/application'
require_relative 'task'
require_relative 'list'

class List < ActiveRecord::Base
	has_many :tasks
end
