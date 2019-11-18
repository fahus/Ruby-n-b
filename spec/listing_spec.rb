require 'listing'

describe Listing do

  describe "all" do
    it "returns 1 listing" do
      listing = Listing.all
      expect(listing[0].name).to eq("Hotel California")
    end
  end
end
