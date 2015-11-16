class EatupUsersController < ApplicationController
  before_action :set_eatup_user, only: [:show, :edit, :update, :destroy]

  # GET /eatup_users
  # GET /eatup_users.json
  def index
    @eatup_users = EatupUser.all
  end

  # GET /eatup_users/1
  # GET /eatup_users/1.json
  def show
  end

  # GET /eatup_users/new
  def new
    @eatup_user = EatupUser.new
  end

  # GET /eatup_users/1/edit
  def edit
  end

  # POST /eatup_users
  # POST /eatup_users.json
  def create
    @eatup_user = EatupUser.new(eatup_user_params)

    respond_to do |format|
      if @eatup_user.save
        format.html { redirect_to @eatup_user, notice: 'Eatup user was successfully created.' }
        format.json { render :show, status: :created, location: @eatup_user }
      else
        format.html { render :new }
        format.json { render json: @eatup_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /eatup_users/1
  # PATCH/PUT /eatup_users/1.json
  def update
    respond_to do |format|
      if @eatup_user.update(eatup_user_params)
        format.html { redirect_to @eatup_user, notice: 'Eatup user was successfully updated.' }
        format.json { render :show, status: :ok, location: @eatup_user }
      else
        format.html { render :edit }
        format.json { render json: @eatup_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /eatup_users/1
  # DELETE /eatup_users/1.json
  def destroy
    @eatup_user.destroy
    respond_to do |format|
      format.html { redirect_to eatup_users_url, notice: 'Eatup user was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_eatup_user
      @eatup_user = EatupUser.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def eatup_user_params
      params.require(:eatup_user).permit(:email, :name, :password)
    end
end
