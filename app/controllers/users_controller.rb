class UsersController < ApplicationController
  before_action :set_user, only: [:show, :update, :destroy]

  # GET /users
  def index
    @users = User.all

    render json: @users
  end

  # GET /users/1
  def show
    @user = User.find(params[:id])
    render json: @users
  end

  def new
    @user = User.new
  end

  # POST /users
  def create
    @user = User.new(user_params)
    if @user.save
      render json: { status: 200, msg: 'User was created.' }
    else
      render :new
    end
  end

  # PATCH/PUT /users/1
  def update

    if @user.update(pw_params)
      render json: { status: 200, msg: 'User password has been updated.' }
    else
      format.json { render json: @user.errors, status: :unprocessable_entity }
    end
  end

  # DELETE /users/1
  def destroy
    if @user.destroy
      render json: { status: 200, msg: 'User has been deleted.' }
    end
  end

  private

    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def user_params
      params.require(:credentials).permit(:username, :password, :password_confirmation)
    end

    def pw_params
      params.require(:passwords).permit(:old, :new)
    end
end
