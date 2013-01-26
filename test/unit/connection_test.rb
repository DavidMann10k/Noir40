require 'test_helper'

class ConnectionTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Connection.new.valid?
  end
end
