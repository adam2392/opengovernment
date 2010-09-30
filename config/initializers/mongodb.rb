begin
  MongoMapper.connection = Mongo::Connection.new('localhost')
  MongoMapper.database = Settings.mongo_database

  MongoMapper.ensure_indexes!
rescue Exception => e
  Rails.logger.debug("Mongodb: #{e.message}")
end

