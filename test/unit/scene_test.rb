require 'test_helper'

class SceneTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Scene.new.valid?
  end
end
