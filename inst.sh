apt-get update && apt-get install libpq-dev
bundle install -j4
rake db:migrate
rake assets:precompile
rails s