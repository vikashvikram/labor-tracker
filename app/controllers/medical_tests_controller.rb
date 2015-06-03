class MedicalTestsController < ApplicationController
  before_action :set_medical_test, only: [:show, :edit, :update, :destroy]

  # GET /medical_tests
  # GET /medical_tests.json
  def index
    @medical_tests = MedicalTest.all
  end

  # GET /medical_tests/1
  # GET /medical_tests/1.json
  def show
  end

  # GET /medical_tests/new
  def new
    @medical_test = MedicalTest.new
  end

  # GET /medical_tests/1/edit
  def edit
  end

  # POST /medical_tests
  # POST /medical_tests.json
  def create
    @medical_test = MedicalTest.new(medical_test_params)

    respond_to do |format|
      if @medical_test.save
        format.html { redirect_to @medical_test, notice: 'Medical test was successfully created.' }
        format.json { render :show, status: :created, location: @medical_test }
      else
        format.html { render :new }
        format.json { render json: @medical_test.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /medical_tests/1
  # PATCH/PUT /medical_tests/1.json
  def update
    respond_to do |format|
      if @medical_test.update(medical_test_params)
        format.html { redirect_to @medical_test, notice: 'Medical test was successfully updated.' }
        format.json { render :show, status: :ok, location: @medical_test }
      else
        format.html { render :edit }
        format.json { render json: @medical_test.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /medical_tests/1
  # DELETE /medical_tests/1.json
  def destroy
    @medical_test.destroy
    respond_to do |format|
      format.html { redirect_to medical_tests_url, notice: 'Medical test was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_medical_test
      @medical_test = MedicalTest.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def medical_test_params
      params.require(:medical_test).permit(:date, :place, :user_id, :patient_id, :weight, :tobacco, :alcohol, :heart_rate, :fetal_heart_sound, :uterus_contraction, :temperature, :sugar, :blood_pressure, :folic_acid_supplimentation_level, :state, :hemoglobin, :platelet_count)
    end
end
