require "db_connection"

def setup_test_database
  DbConnection.setup("airbnb-test")
  DbConnection.query("TRUNCATE listings;")
  DbConnection.query("TRUNCATE RUBYNB_USER;")
  add_listings
end

def add_listings
  DbConnection.setup("airbnb-test")
  DbConnection.query("INSERT INTO listings(name, description, price) VALUES ('Hotel California', 'A lovely place to stay with lots of nice things like wifi and snacks', 1000.00)")
end
