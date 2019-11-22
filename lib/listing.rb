require_relative 'db_connection.rb'
require 'dotenv/load'
class Listing

  attr_reader :id, :name, :description, :price, :start_date, :end_date, :owner_id

  def initialize(id:, name:, description:, price:, start_date:, end_date:, owner_id:)

    @id = id
    @name = name
    @description = description
    @price = price
    @start_date = start_date
    @end_date = end_date
    @owner_id = owner_id
  end

  def self.all
    DbConnection.setup(ENV["DB_NAME"])
    result = DbConnection.query("SELECT * FROM LISTINGS;")
    result.map do |listing|
      Listing.new(id: listing["id"], name: listing["name"], description: listing["description"], price: listing["price"], start_date: listing["start_date"], end_date: listing["end_date"], owner_id: listing["owner_id"])
      end
  end

    def self.add(name:, description:, price:, start_date:, end_date:, owner_id:)

      result = DbConnection.query("INSERT INTO listings (name, description, price, start_date, end_date, owner_id) VALUES ('#{name}', '#{description}', '#{price}', '#{start_date}', '#{end_date}', '#{owner_id}') RETURNING id, name, description, price, start_date, end_date, owner_id;")
      Listing.new(id: result[0]['id'], name: result[0]['name'], description: result[0]['description'], price: result[0]['price'], start_date: result[0]['start_date'], end_date: result[0]['end_date'], owner_id: result[0]['owner_id'])
    end


end
