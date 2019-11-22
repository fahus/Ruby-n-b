require 'dotenv/load'
require_relative 'db_connection.rb'

class User
  attr_reader :email, :password, :id

  def initialize(id:,email:,password:)
    @id = id
    @email = email
    @password = password
  end

  def self.add(email:, password:)
    DbConnection.setup(ENV["DB_NAME"])
    result = DbConnection.query("INSERT INTO RUBYNB_USER (email, password) VALUES ('#{email}', '#{password}') RETURNING id, email, password;")
    User.new(id: result[0]['id'], email: result[0]['email'], password: result[0]['password'])
  end

  def self.where(id:)
    DbConnection.setup(ENV["DB_NAME"])
    result = DbConnection.query("SELECT * FROM RUBYNB_USER WHERE id = #{id};")
    User.new(id: result[0]['id'], email: result[0]['email'], password: result[0]['password'])
  end

  def self.authenticate(email:, password:)
    DbConnection.setup(ENV["DB_NAME"])
    result = DbConnection.query("SELECT * FROM RUBYNB_USER WHERE email = '#{email}' AND password = '#{password}';")
    return unless result.any?
    User.new(id: result[0]['id'], email: result[0]['email'], password: result[0]['password'])
  end
end
