class UsersController < ApplicationController
  before_action :set_user, only: [:show, :update, :destroy]

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
    if user_params['name'] != 'Select a User'
      @user = User.find_or_initialize_by(user_params)
      if @user.save
        render json: @user.to_json
      else
        render json: @user.errors, status: :unprocessable_entity
      end
    else
      render json: {
        status: "error",
        message: "You need to select a user or create a new one!",
        code: " "
    }.to_json
    end
  end

  # PATCH/PUT /users/1
  def update
    if @user.update(user_params)
      render json: @user
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  # DELETE /users/1
  def destroy
    @user.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def user_params
      params.require(:user).permit(:name)
    end
end
