cd hackerrank
gem install bundle
bundle install
npm install
sudo npm i -g bower
bundle exec rake bower:update
RAILS_ENV=development REACT_VERSION=true bundle exec rails server -b 0.0.0.0 > /tmp/rails.logs &
NODE_ENV=development BABEL_DISABLE_CACHE=1 npm start >/tmp/node.logs &
sudo service nginx restart
