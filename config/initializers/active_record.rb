env    = ENV['ENV'] || 'development'
root   = File.expand_path '../..', __FILE__
config = YAML.load(File.read(File.join(root, 'database.yml')))

ActiveRecord::Base.configurations = config
ActiveRecord::Base.establish_connection env.to_sym