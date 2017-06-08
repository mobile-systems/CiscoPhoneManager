class TechUsersController < ApplicationController
  before_action :set_tech_user, only: [:show, :edit, :update, :destroy]

  # GET /tech_users
  # GET /tech_users.json
  def index
    @tech_users = TechUser.all
  end

  # GET /tech_users/1
  # GET /tech_users/1.json
  def show
  end

  # GET /tech_users/new
  def new
    @tech_user = TechUser.new
  end

  # GET /tech_users/1/edit
  def edit
  end

  # POST /tech_users
  # POST /tech_users.json
  def create
    @tech_user = TechUser.new(tech_user_params)

    respond_to do |format|
      if @tech_user.save
        format.html { redirect_to @tech_user, notice: 'Tech user was successfully created.' }
        format.json { render :show, status: :created, location: @tech_user }
      else
        format.html { render :new }
        format.json { render json: @tech_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tech_users/1
  # PATCH/PUT /tech_users/1.json
  def update
    respond_to do |format|
      if @tech_user.update(tech_user_params)
        format.html { redirect_to @tech_user, notice: 'Tech user was successfully updated.' }
        format.json { render :show, status: :ok, location: @tech_user }
      else
        format.html { render :edit }
        format.json { render json: @tech_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tech_users/1
  # DELETE /tech_users/1.json
  def destroy
    @tech_user.destroy
    respond_to do |format|
      format.html { redirect_to tech_users_url, notice: 'Tech user was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tech_user
      @tech_user = TechUser.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tech_user_params
      params.require(:tech_user).permit(:name, :login, :password_digest)
    end
end
