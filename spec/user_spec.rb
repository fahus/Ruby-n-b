require "user"

describe User do

  describe("add") do
    it "adds a single user" do
      user = User.add(email: "alistairphipps@gmail.com",password:"password123")
      expect(user.email).to eq "alistairphipps@gmail.com"
    end
  end
end
