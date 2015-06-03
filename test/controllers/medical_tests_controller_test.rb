require 'test_helper'

class MedicalTestsControllerTest < ActionController::TestCase
  setup do
    @medical_test = medical_tests(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:medical_tests)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create medical_test" do
    assert_difference('MedicalTest.count') do
      post :create, medical_test: { alcohol: @medical_test.alcohol, blood_pressure: @medical_test.blood_pressure, date: @medical_test.date, fetal_heart_sound: @medical_test.fetal_heart_sound, folic_acid_supplimentation_level: @medical_test.folic_acid_supplimentation_level, heart_rate: @medical_test.heart_rate, hemoglobin: @medical_test.hemoglobin, patient_id: @medical_test.patient_id, place: @medical_test.place, platelet_count: @medical_test.platelet_count, state: @medical_test.state, sugar: @medical_test.sugar, temperature: @medical_test.temperature, tobacco: @medical_test.tobacco, user_id: @medical_test.user_id, uterus_contraction: @medical_test.uterus_contraction, weight: @medical_test.weight }
    end

    assert_redirected_to medical_test_path(assigns(:medical_test))
  end

  test "should show medical_test" do
    get :show, id: @medical_test
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @medical_test
    assert_response :success
  end

  test "should update medical_test" do
    patch :update, id: @medical_test, medical_test: { alcohol: @medical_test.alcohol, blood_pressure: @medical_test.blood_pressure, date: @medical_test.date, fetal_heart_sound: @medical_test.fetal_heart_sound, folic_acid_supplimentation_level: @medical_test.folic_acid_supplimentation_level, heart_rate: @medical_test.heart_rate, hemoglobin: @medical_test.hemoglobin, patient_id: @medical_test.patient_id, place: @medical_test.place, platelet_count: @medical_test.platelet_count, state: @medical_test.state, sugar: @medical_test.sugar, temperature: @medical_test.temperature, tobacco: @medical_test.tobacco, user_id: @medical_test.user_id, uterus_contraction: @medical_test.uterus_contraction, weight: @medical_test.weight }
    assert_redirected_to medical_test_path(assigns(:medical_test))
  end

  test "should destroy medical_test" do
    assert_difference('MedicalTest.count', -1) do
      delete :destroy, id: @medical_test
    end

    assert_redirected_to medical_tests_path
  end
end
