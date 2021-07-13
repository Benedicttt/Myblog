bundle install -j4
rake db:migrate
rake assets:precompile
rails s