require "db_connection"

def setup_test_database
  DbConnection.setup("airbnb-test")
end
