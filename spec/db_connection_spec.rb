require 'db_connection'

describe DbConnection do

  describe "connect" do
    it "connects and selects from listings table" do
      connection = DbConnection.setup("airbnb-test")
      expect(connection).to receive(:exec).with("SELECT NAME FROM LISTINGS;")
      DbConnection.query("SELECT NAME FROM LISTINGS;")
    end
  end
end
