if ENV['MONGOLAB_URI']
  Mongoid.configure do |config|
    uri = URI.parse(ENV['MONGOLAB_URI'])
    connection = Mongo::Connection.from_uri(ENV['MONGOLAB_URI'])
    db = connection.db(uri.path.gsub(/^\//, ''))
    config.master = db
  end
end
