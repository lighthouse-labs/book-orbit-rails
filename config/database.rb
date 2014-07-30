configure do
  # Log queries to STDOUT in development
  if Sinatra::Application.development?
    ActiveRecord::Base.logger = Logger.new(STDOUT)
  end

  puts "Establishing connection to database ..."
  ActiveRecord::Base.establish_connection(
    adapter: 'postgresql',
    encoding: 'unicode',
    pool: 5,
    database: 'd50q6341u8fcsv',
    username: 'qlutcsmamscfdv',
    password: 'VcCIyxrCKR8LhZdKoa-L3-EL3C',
    host: 'ec2-54-235-246-73.compute-1.amazonaws.com',
    port: 5432,
    min_messages: 'error'
  )
  puts "CONNECTED"

  # Load all models from app/models, using autoload instead of require
  # See http://www.rubyinside.com/ruby-techniques-revealed-autoload-1652.html
  Dir[APP_ROOT.join('app', 'models', '*.rb')].each do |model_file|
    filename = File.basename(model_file).gsub('.rb', '')
    autoload ActiveSupport::Inflector.camelize(filename), model_file
  end

end
