require_relative 'db_connection.rb'

class User
  attr_reader :email,:password

  def initialize(id:,email:,password:)
    @id = id
    @email = email
    @password = password
  end

  def self.add(email:, password:)
    DbConnection.setup("airbnb-test")
    result = DbConnection.query("INSERT INTO RUBYNB_USER (email, password) VALUES ('#{email}', '#{password}') RETURNING id, email, password;")
    User.new(id: result[0]['id'], email: result[0]['email'], password: result[0]['password'])
  end
end
