require 'test_helper'

class BagsControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end

  def test_show
    get :show, :id => Bag.first
    assert_template 'show'
  end

  def test_new
    get :new
    assert_template 'new'
  end

  def test_create_invalid
    Bag.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    Bag.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to bag_url(assigns(:bag))
  end

  def test_edit
    get :edit, :id => Bag.first
    assert_template 'edit'
  end

  def test_update_invalid
    Bag.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Bag.first
    assert_template 'edit'
  end

  def test_update_valid
    Bag.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Bag.first
    assert_redirected_to bag_url(assigns(:bag))
  end

  def test_destroy
    bag = Bag.first
    delete :destroy, :id => bag
    assert_redirected_to bags_url
    assert !Bag.exists?(bag.id)
  end
end
