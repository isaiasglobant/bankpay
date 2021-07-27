require 'yaml'

module GrapeSkeleton

  # Return a Pathname object so we can use nice methods on it :
  # GrapeSkeleton.root.join('tmp', 'foo', 'bar.yml')
  def self.root
    Pathname.new root_dir
  end

  # Set the application root dir (the result is cached as it should not change)
  def self.root_dir
    @root_dir ||= File.realpath(File.dirname(File.expand_path('../config.ru', __dir__)))
  end

  # Do the require after methods defintions as
  # we may need them while defining app configuration
  require 'grape_skeleton/version'
  require 'grape_skeleton/config'
  require 'grape_skeleton/root'
end