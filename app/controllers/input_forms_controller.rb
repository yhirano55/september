class InputFormsController < ApplicationController
  before_action :set_input_form, only: %i[show edit update destroy]

  # GET /input_forms
  def index
    @input_forms = InputForm.all
  end

  # GET /input_forms/1
  def show
  end

  # GET /input_forms/new
  def new
    @input_form = InputForm.new
  end

  # GET /input_forms/1/edit
  def edit
  end

  # POST /input_forms
  def create
    @input_form = InputForm.new(input_form_params)

    if @input_form.save
      redirect_to @input_form, notice: "Input form was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /input_forms/1
  def update
    if @input_form.update(input_form_params)
      redirect_to @input_form, notice: "Input form was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # DELETE /input_forms/1
  def destroy
    @input_form.destroy
    redirect_to input_forms_url, notice: "Input form was successfully destroyed."
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_input_form
    @input_form = InputForm.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def input_form_params
    params.require(:input_form).permit(:title, :description)
  end
end
