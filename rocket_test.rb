require "minitest/autorun"
require_relative "rocket"

class RocketTest < Minitest::Test
  # Write your tests here!

  def setup
    @rocket = Rocket.new(name: "Smith", colour: "Pink", flying: true )

  end

  def test_name
    expected_value = "Smith"
    given_value = @rocket.name

    assert_equal "Smith", given_value
  end

  def test_name_change
    expected_value = "Jones"
    given_value = @rocket.name=("Jones")

    assert_equal "Jones", given_value
  end

  def test_colour
    expected_value = "Pink"
    given_value = @rocket.colour

    assert_equal "Pink", given_value
  end

  def test_colour_change
    expected_value = "Blue"
    given_value = @rocket.colour=("Blue")

    assert_equal "Blue", given_value
  end

  def test_is_flying
    expected_value = true
    given_value = @rocket.flying?

    assert_equal expected_value, given_value

  end

  def test_lift_off
    expected_value = false
    given_value = @rocket.lift_off

    assert_equal expected_value, given_value
  end

  def test_is_not_lift_off
    @rocket1 = Rocket.new(flying: false)

    expected_value = true
    given_value = @rocket1.lift_off

    assert_equal expected_value, given_value

  end

  def test_land
    expected_value = true
    given_value = @rocket.land

    assert_equal expected_value, given_value

  end

  def test_not_land
    @rocket1 = Rocket.new(flying: false)
    expected_value = false
    given_value = @rocket1.land

    assert_equal expected_value, given_value

  end

  def test_status
    expected_value = "Rocket #{@rocket.name} is flying through the sky!"
    given_value = @rocket.status

    assert_equal expected_value, given_value
  end

  def test_not_status
    @rocket1 = Rocket.new(flying: false)

    expected_value = "Rocket #{@rocket1.name} is ready for lift off!"
    given_value = @rocket1.status

    assert_equal expected_value, given_value
  end



end
