require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # Will run before any test!
  def setup
    logger = ActiveSupport::TaggedLogging.new(Logger.new(STDOUT))
    @user = users(:one)
  end

  test "A user must have a first name" do
    assert @user.first_name, "Eranga"
    @user.first_name = nil
    assert_not @user.valid?
  end

  test "A user must have a last name" do
    assert @user.last_name, "Man"
    @user.last_name = nil
    assert_not @user.valid?
  end

end
