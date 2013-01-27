require 'test_helper'

class BagTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Bag.new.valid?
  end
end
