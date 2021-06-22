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

if psql -U postgres -c "create user admin_blog;"; then
    echo "User created"
fi

if psql -U postgres -c "alter user admin_blog password 'admin_blog';"; then
    echo "User created"
fi

if psql -U postgres -c "create database db_blog_development;"; then
    echo "DATABASE created"
fi

if psql -U postgres -c "grant all privileges on database db_blog_development to admin_blog;"; then
    echo "User created"
fi

if psql -U postgres -c "ALTER DATABASE admin_blog OWNER TO db_blog_development;"; then
    echo "User created"
fi

if psql -U postgres -c "create database db_blog_test;"; then
    echo "DATABASE created"
fi

if psql -U postgres -c "grant all privileges on database db_blog_test to admin_blog;"; then
    echo "User created"
fi

if psql -U postgres -c "ALTER DATABASE admin_blog OWNER TO db_blog_test;"; then
    echo "User created"
fi

cd /app

bundle install

RAILS_ENV=development rake db:migrate
RAILS_ENV=development rake assets:precompile

#bundle exec rails s -b 0.0.0.0 &
tail -f /dev/null
exec "$@"