# Load application dependencies in Ruby LOAD_PATH
require_relative 'boot'

# require gems listed in Gemfile
Bundler.require(:default)

# Load environment variables
require 'dotenv/load'

# Load settings from Figaro config file as environment variables
require 'figaro/rack_app'
Figaro.adapter = Figaro::RackApp
Figaro.load

# require our lib
require 'grape_skeleton'

require 'active_record'
require_relative '../app/models/driver'
require_relative '../app/models/rider'
require_relative '../app/models/journey'

def db_configuration
   db_configuration_file = File.join(File.expand_path('..', __FILE__), '..', 'db', 'config.yml')
   YAML.load(File.read(db_configuration_file))
end

ActiveRecord::Base.establish_connection(db_configuration["development"])
