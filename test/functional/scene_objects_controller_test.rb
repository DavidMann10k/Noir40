require 'test_helper'

class SceneObjectsControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end

  def test_show
    get :show, :id => SceneObject.first
    assert_template 'show'
  end

  def test_new
    get :new
    assert_template 'new'
  end

  def test_create_invalid
    SceneObject.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    SceneObject.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to scene_object_url(assigns(:scene_object))
  end

  def test_edit
    get :edit, :id => SceneObject.first
    assert_template 'edit'
  end

  def test_update_invalid
    SceneObject.any_instance.stubs(:valid?).returns(false)
    put :update, :id => SceneObject.first
    assert_template 'edit'
  end

  def test_update_valid
    SceneObject.any_instance.stubs(:valid?).returns(true)
    put :update, :id => SceneObject.first
    assert_redirected_to scene_object_url(assigns(:scene_object))
  end

  def test_destroy
    scene_object = SceneObject.first
    delete :destroy, :id => scene_object
    assert_redirected_to scene_objects_url
    assert !SceneObject.exists?(scene_object.id)
  end
end
