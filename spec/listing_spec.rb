require 'listing'

describe Listing do

  describe "all" do
    it "returns 1 listing" do
      listing = Listing.all
      expect(listing[0].name).to eq("Hotel California")
    end
  end

  describe "add" do
    it 'creates a new property listing' do
        listing = Listing.add(name: 'Holiday Inn', description: 'Cheap and cheerful, coffee and tea provided', price: '250.00')
        expect(listing.name).to eq "Holiday Inn"
      end
    end
  end
