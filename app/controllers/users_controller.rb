class UsersController < ApplicationController
  before_action :set_user, only: [:show, :update, :destroy]

  # POST '/sign-up'
  # def signup
  #   user = User.new(user_params)
  #   if user.valid?
  #     render json: user, status: :created
  #   else
  #     render json: user.errors, status: :bad_request
  #   end
  # end

  # POST '/sign-in'
  # def signin
  #   creds = user_params
  #   if (user = User.authenticate creds[:username],
  #                                creds[:password])
  #     render json: user, serializer: UserLoginSerializer, root: 'user'
  #   else
  #     head :unauthorized
  #   end
  # end

  # GET /users
  def index
    @users = User.all

    render json: @users
  end

  # GET /users/1
  def show
    render json: @user
  end

  # POST /users
  def create
    @user = User.new(user_params)
    if @user.save
      render json: { status: 200, msg: 'User was created.' }
    end
  end

  # PATCH/PUT /users/1
  def update
    if @user.update(user_params)
      render json: { status: 200, msg: 'User details have been updated.' }
    else
      render :new
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
      params.require(:user).permit(:username, :password, :password_confirmation)
    end

    def authorize
    return_unauthorized unless current_user && current_user.can_modify_user?(params[:id])
  end
end