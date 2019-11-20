require_relative 'db_connection.rb'
require 'dotenv/load'

class Listing

  attr_reader :id, :name, :description, :price, :owner_id

  def initialize(id:, name:, description:, price:, owner_id:)
    @id = id
    @name = name
    @description = description
    @price = price
    @owner_id = owner_id
  end

  def self.all
    DbConnection.setup(ENV["DB_NAME"])
    result = DbConnection.query("SELECT * FROM LISTINGS;")
    result.map do |listing|
      Listing.new(id: listing["id"], name: listing["name"],
        description: listing["description"], price: listing["price"],
        owner_id: listing["owner_id"])
      end
    end

    def self.add(name:, description:, price:, owner_id:)
      result = DbConnection.query("INSERT INTO listings (name, description, price, owner_id) VALUES ('#{name}', '#{description}', '#{price}', '#{owner_id}') RETURNING id, name, description, price,owner_id;")
      Listing.new(id: result[0]['id'], name: result[0]['name'], description: result[0]['description'], price: result[0]['price'], owner_id: result[0]['owner_id'])
    end
  end
