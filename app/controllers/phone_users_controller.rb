class PhoneUsersController < ApplicationController
  before_action :set_phone_user, only: [:show, :edit, :update, :destroy]

  # GET /phone_users
  # GET /phone_users.json
  def index
    @phone_users = PhoneUser.all
  end

  # GET /phone_users/1
  # GET /phone_users/1.json
  def show
  end

  # GET /phone_users/new
  def new
    @phone_user = PhoneUser.new
  end

  # GET /phone_users/1/edit
  def edit
  end

  # POST /phone_users
  # POST /phone_users.json
  def create
    @phone_user = PhoneUser.new(phone_user_params)

    respond_to do |format|
      if @phone_user.save
        format.html { redirect_to @phone_user, notice: 'Phone user was successfully created.' }
        format.json { render :show, status: :created, location: @phone_user }
      else
        format.html { render :new }
        format.json { render json: @phone_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /phone_users/1
  # PATCH/PUT /phone_users/1.json
  def update
    respond_to do |format|
      if @phone_user.update(phone_user_params)
        format.html { redirect_to @phone_user, notice: 'Phone user was successfully updated.' }
        format.json { render :show, status: :ok, location: @phone_user }
      else
        format.html { render :edit }
        format.json { render json: @phone_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /phone_users/1
  # DELETE /phone_users/1.json
  def destroy
    @phone_user.destroy
    respond_to do |format|
      format.html { redirect_to phone_users_url, notice: 'Phone user was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_phone_user
      @phone_user = PhoneUser.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def phone_user_params
      params.require(:phone_user).permit(:last_name, :first_name, :second_name)
    end
end
