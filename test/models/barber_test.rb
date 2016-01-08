require 'test_helper'

class BarberTest < ActiveSupport::TestCase
  def setup
    @barber = Barber.new(username: "FooBar", name: "Foo", rating: 4.5,
                         personal_bio: "Hello, World!");
  end

  test "should be valid" do
    assert @barber.valid?
  end

  test "username should be present" do
    @barber.username = "       "
    assert_not @barber.valid?
  end
end
