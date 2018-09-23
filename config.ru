require File.expand_path('base_app', File.dirname(__FILE__))

map "/" do
  use UsersController
  run RootController
end