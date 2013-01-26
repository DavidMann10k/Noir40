require 'test_helper'

class SceneObjectTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert SceneObject.new.valid?
  end
end
