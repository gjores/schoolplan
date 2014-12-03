require 'test_helper'

class CoursesControllerTest < ActionController::TestCase
  setup do
    @course = courses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:courses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create course" do
    assert_difference('Course.count') do
      post :create, course: { cours_code: @course.cours_code, cours_name: @course.cours_name, type: @course.type, year_one_ht: @course.year_one_ht, year_one_vt: @course.year_one_vt, year_three_ht: @course.year_three_ht, year_three_vt: @course.year_three_vt, year_two_ht: @course.year_two_ht, year_two_vt: @course.year_two_vt }
    end

    assert_redirected_to course_path(assigns(:course))
  end

  test "should show course" do
    get :show, id: @course
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @course
    assert_response :success
  end

  test "should update course" do
    patch :update, id: @course, course: { cours_code: @course.cours_code, cours_name: @course.cours_name, type: @course.type, year_one_ht: @course.year_one_ht, year_one_vt: @course.year_one_vt, year_three_ht: @course.year_three_ht, year_three_vt: @course.year_three_vt, year_two_ht: @course.year_two_ht, year_two_vt: @course.year_two_vt }
    assert_redirected_to course_path(assigns(:course))
  end

  test "should destroy course" do
    assert_difference('Course.count', -1) do
      delete :destroy, id: @course
    end

    assert_redirected_to courses_path
  end
end
