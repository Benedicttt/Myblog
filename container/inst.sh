#!/bin/bash

set -e

if [ -f /app/tmp/pids/server.pid ]; then
  rm /app/tmp/pids/server.pid
fi

apt-get update && apt-get install -y sudo

cp /app/container/pg_hba.conf /etc/postgresql/11/main/ && cp /app/container/postgresql.conf /etc/postgresql/11/main/

if service postgresql start; then
    echo "POSTGRES installed"
fi

if psql -U postgres -c "create database MyBlog_development;"; then
    echo "DATABASE created"
fi

if psql -U postgres -c "create database test;"; then
    echo "DATABASE created"
fi

if psql -U postgres -c "create user MyBlog;"; then
    echo "User created"
fi

if psql -U postgres -c "create user test;"; then
    echo "User created"
fi

if psql -U postgres -c "alter user MyBlog password 'MyBlog';"; then
    echo "User created"
fi

if psql -U postgres -c "alter user test password 'test';"; then
    echo "User created"
fi

if psql -U postgres -c "grant all privileges on database MyBlog_development to MyBlog;"; then
    echo "User created"
fi

if psql -U postgres -c "grant all privileges on database test to test;"; then
    echo "User created"
fi

if psql -U postgres -c "ALTER DATABASE test OWNER TO test;;"; then
    echo "User created"
fi

cd /app

bundle install
RAILS_ENV=development rake db:migrate
RAILS_ENV=development rake assets:precompile
#export http_proxy='http://0.0.0.0:3128'
#export https_proxy='http://0.0.0.0:3128'

#bundle exec rails s -b 0.0.0.0 &
tail -f /dev/null
exec "$@"