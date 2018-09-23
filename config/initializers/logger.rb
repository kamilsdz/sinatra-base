require 'logger'
ActiveRecord::Base.logger = Logger.new(STDOUT)