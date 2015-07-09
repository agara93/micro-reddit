require 'test_helper'

class UserTest < ActiveSupport::TestCase
  def setup
      @u = User.new(username: "ExampleUser", email: "ExampleEmail", password: "password")
  end
  
  test "user should be valid" do
      assert @u.valid?
  end
  
  test "username should be present" do
      @u.username = " "
      assert_not @u.valid?
  end
  
  test "email should be present" do
      @u.email = " "
      assert_not @u.valid?
  end
  
  test "password should be present" do
      @u.password = " "
      assert_not @u.valid?
  end
end
