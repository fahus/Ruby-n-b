require_relative 'db_connection.rb'
require 'dotenv/load'

class Listing

  attr_reader :id, :name, :description, :price, :date

  def initialize(id:, name:, description:, price:, date:)
    @id = id
    @name = name
    @description = description
    @price = price
    @date = date
  end

  def self.all
    DbConnection.setup(ENV["DB_NAME"])
    result = DbConnection.query("SELECT * FROM LISTINGS;")
    result.map do |listing|
      Listing.new(id: listing["id"], name: listing["name"],
        description: listing["description"], price: listing["price"], date: listing["date"])
      end
    end

    def self.add(name:, description:, price:, date:)
      result = DbConnection.query("INSERT INTO listings (name, description, price, date) VALUES ('#{name}', '#{description}', '#{price}', '#{date}') RETURNING id, name, description, price, date;")
      Listing.new(id: result[0]['id'], name: result[0]['name'], description: result[0]['description'], price: result[0]['price'], date: result[0]['date'])
    end
  end
