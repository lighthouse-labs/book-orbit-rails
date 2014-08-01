configure do
  # Log queries to STDOUT in development
  if Sinatra::Application.development?
    ActiveRecord::Base.logger = Logger.new(STDOUT)
  end

  set :database, {
    adapter: "postgresql",
    database: "bookorbit",
	:host => 'localhost',
:port => '5432',
:username => 'bookorbit',
:password => 'asdf'
    #database: "postgres://vagrant:@localhost:5433/bookorbit"
  }

  # Load all models from app/models, using autoload instead of require
  # See http://www.rubyinside.com/ruby-techniques-revealed-autoload-1652.html
  Dir[APP_ROOT.join('app', 'models', '*.rb')].each do |model_file|
    filename = File.basename(model_file).gsub('.rb', '')
    autoload ActiveSupport::Inflector.camelize(filename), model_file
  end

end
