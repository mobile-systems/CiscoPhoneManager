class PhoneNumberGroupsController < ApplicationController
  before_action :set_phone_number_group, only: [:show, :edit, :update, :destroy]

  # GET /phone_number_groups
  # GET /phone_number_groups.json
  def index
    @phone_number_groups = PhoneNumberGroup.all
  end

  # GET /phone_number_groups/1
  # GET /phone_number_groups/1.json
  def show
  end

  # GET /phone_number_groups/new
  def new
    @phone_number_group = PhoneNumberGroup.new
  end

  # GET /phone_number_groups/1/edit
  def edit
  end

  # POST /phone_number_groups
  # POST /phone_number_groups.json
  def create
    @phone_number_group = PhoneNumberGroup.new(phone_number_group_params)

    respond_to do |format|
      if @phone_number_group.save
        format.html { redirect_to @phone_number_group, notice: 'Phone number group was successfully created.' }
        format.json { render :show, status: :created, location: @phone_number_group }
      else
        format.html { render :new }
        format.json { render json: @phone_number_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /phone_number_groups/1
  # PATCH/PUT /phone_number_groups/1.json
  def update
    respond_to do |format|
      if @phone_number_group.update(phone_number_group_params)
        format.html { redirect_to @phone_number_group, notice: 'Phone number group was successfully updated.' }
        format.json { render :show, status: :ok, location: @phone_number_group }
      else
        format.html { render :edit }
        format.json { render json: @phone_number_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /phone_number_groups/1
  # DELETE /phone_number_groups/1.json
  def destroy
    @phone_number_group.destroy
    respond_to do |format|
      format.html { redirect_to phone_number_groups_url, notice: 'Phone number group was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_phone_number_group
      @phone_number_group = PhoneNumberGroup.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def phone_number_group_params
      params.require(:phone_number_group).permit(:name)
    end
end
