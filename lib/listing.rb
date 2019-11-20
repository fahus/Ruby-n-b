require_relative 'db_connection.rb'
require 'dotenv/load'

class Listing

  attr_reader :id, :name, :description, :price

  def initialize(id:, name:, description:, price:)
    @id = id
    @name = name
    @description = description
    @price = price
  end

  def self.all
    DbConnection.setup(ENV["DB_NAME"])
    result = DbConnection.query("SELECT * FROM LISTINGS;")
    result.map do |listing|
      Listing.new(id: listing["id"], name: listing["name"],
        description: listing["description"], price: listing["price"])
      end
    end

    def self.add(name:, description:, price:)
      result = DbConnection.query("INSERT INTO listings (name, description, price) VALUES ('#{name}', '#{description}', '#{price}') RETURNING id, name, description, price;")
      Listing.new(id: result[0]['id'], name: result[0]['name'], description: result[0]['description'], price: result[0]['price'])
    end
  end
