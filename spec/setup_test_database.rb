require "db_connection"

def setup_test_database
  DbConnection.setup(ENV["DB_NAME"])
  DbConnection.query("TRUNCATE listings;")
  DbConnection.query("TRUNCATE RUBYNB_USER;")
  add_listings
end

def add_listings
  DbConnection.query("INSERT INTO listings(name, description, price, start_date, end_date) VALUES ('Hotel California', 'A lovely place to stay with lots of nice things like wifi and snacks', 1000.00, '2019-11-23', '2019-11-30')")
end
