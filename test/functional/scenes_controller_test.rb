require 'test_helper'

class ScenesControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end

  def test_show
    get :show, :id => Scene.first
    assert_template 'show'
  end

  def test_new
    get :new
    assert_template 'new'
  end

  def test_create_invalid
    Scene.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    Scene.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to scene_url(assigns(:scene))
  end

  def test_edit
    get :edit, :id => Scene.first
    assert_template 'edit'
  end

  def test_update_invalid
    Scene.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Scene.first
    assert_template 'edit'
  end

  def test_update_valid
    Scene.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Scene.first
    assert_redirected_to scene_url(assigns(:scene))
  end

  def test_destroy
    scene = Scene.first
    delete :destroy, :id => scene
    assert_redirected_to scenes_url
    assert !Scene.exists?(scene.id)
  end
end
