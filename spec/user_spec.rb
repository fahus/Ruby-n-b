require "user"

describe User do

  describe("add") do
    it "adds a single user" do
      user = User.add(email: "alistairphipps@gmail.com",password:"password123")
      expect(user.email).to eq "alistairphipps@gmail.com"
    end
  end

  describe "select a user" do
    it "returns 1 user" do
      returnedUser = User.add(email: "alistairphipps@gmail.com",password:"password123")
      user = User.where(id: returnedUser.id)
      expect(user.id).to eq(returnedUser.id)
    end
  end
end
