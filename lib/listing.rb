require_relative 'db_connection.rb'

class Listing

  attr_reader :id, :name, :description, :price

  def initialize(id:, name:, description:, price:)
    @id = id
    @name = name
    @description = description
    @price = price
  end

  def self.all
    DbConnection.setup("airbnb-test")
    result = DbConnection.query("SELECT * FROM LISTINGS;")
    result.map do |listing|
      Listing.new(id: listing["id"], name: listing["name"],
        description: listing["description"], price: listing["price"])
    end
  end
end
