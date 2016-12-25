
require 'rails_helper'
RSpec.describe User, type: :model do
  it "should not save if email already exists." do
   User.create(
    first_name: "Jane",
    last_name: "Doe",
    email: "janethebest@codingdojo.com"
   )
   user = User.new(
    first_name: "Jane",
    last_name: "Smith",
    email: "janethebest@codingdojo.com"
   )
   expect(user).to be_invalid
  end
  it "should not save if first_name field is blank." do
   user = User.new(
    first_name: ''
   )
   expect(user).to be_invalid
  end
  it "should not save if last_name field is blank." do
   user = User.new(
    last_name: ''
   )
   expect(user).to be_invalid
  end
  it "should not save if email field is blank." do
   user = User.new(
    email: ''
   )
   expect(user).to be_invalid
  end
  it "should not save if password field is blank." do
   user = User.new(
    password: ''
   )
   expect(user).to be_invalid
  end
  it "should contain a valid email" do
   user = User.new(
    first_name: 'Roald',
    last_name: 'Dahl',
    email: 'roalddahl'
   )
   expect(user).to be_invalid
  end
  it "should contain a password 6 characters long" do
   user = User.new(
    password: 'passw'
   )
   expect(user).to be_invalid
  end

end


