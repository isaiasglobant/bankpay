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

# require 'uri'
# require 'em-synchrony/activerecord'
# require 'yaml'
# require 'erb'

# # Sets up database configuration
# db = URI.parse(ENV['DATABASE_URL'] || 'http://localhost')
# if db.scheme == 'postgres' # Heroku environment
#   ActiveRecord::Base.establish_connection(
#     :adapter  => db.scheme == 'postgres' ? 'em_postgresql' : db.scheme,
#     :host     => db.host,
#     :username => db.user,
#     :password => db.password,
#     :database => db.path[1..-1],
#     :encoding => 'utf8'
#   )
# else # local environment
#   environment = ENV['DATABASE_URL'] ? 'production' : 'development'
#   db = YAML.load(ERB.new(File.read('config/database.yml')).result)[environment]
#   ActiveRecord::Base.establish_connection(db)
# end


require 'active_record'
require_relative '../app/models/post'
def db_configuration
   db_configuration_file = File.join(File.expand_path('..', __FILE__), '..', 'db', 'config.yml')
   YAML.load(File.read(db_configuration_file))
end

ActiveRecord::Base.establish_connection(db_configuration["development"])
