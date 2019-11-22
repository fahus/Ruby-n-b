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
        listing = Listing.add(name: 'Holiday Inn', description: 'Cheap and cheerful, coffee and tea provided', price: '250.00', start_date: '2019-11-29', end_date: '2019-12-02', owner_id: 1)
        expect(listing.name).to eq "Holiday Inn"
        expect(listing.start_date).to eq "2019-11-29"
        expect(listing.end_date).to eq "2019-12-02"
      end
    end
  end
