require 'minitest/autorun'
require 'minitest/pride'
require './lib/instrument'

class InstrumentTest < Minitest::Test
  def test_it_exists
    instrument = Instrument.new("Piano")

    assert_instance_of Instrument, instrument
  end

  def test_it_has_attributes
    instrument = Instrument.new("Piano")

    assert_equal "Piano", instrument.type
    assert_equal false, instrument.broken?
  end
end
