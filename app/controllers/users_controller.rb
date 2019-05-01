class UsersController < ApplicationController
  before_action :authenticate_user!
  before_action :set_user, only: [:show, :edit, :update, :destroy]
  before_action :authorize_user, only: [:edit, :update, :destroy]
  before_action :set_roles_locations_skills, only: [:new, :edit]
  before_action :redirect_to_donate, only: [:index, :show, :edit, :new]
  before_action :redirect_to_update_profile, only: [:index, :show, :edit]
  before_action :update_skills, only: [:update]


  # GET /users
  # GET /users.json
  def index
    # @users = User.all
    @users = User.all.order(:last_name)
  end

  # GET /users/1
  # GET /users/1.json
  def show
    location_id = @user.location_id
    @location = Location.find(location_id)
  end

  # GET /users/new
  def new
    @user = current_user
  end

  # GET /users/1/edit
  def edit
  end

  # POST /users
  # POST /users.json
  def create
    @user = current_user

    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to @user, notice: 'User was successfully created.' }
        format.json { render :show, status: :created, location: @user }
      else
        format.html { render :new }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to @user, notice: 'User was successfully updated.' }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end

    if @user.first_name && @user.last_name && @user.role && @user.location_id
      @user.profile_complete = true
      @user.save
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url, notice: 'User was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_roles_locations_skills
      @roles = User.roles.keys
      @locations = Location.all
      @skills = Skill.all
      @selected_skills = current_user.skills.pluck(:name)
    end

    def update_skills
      current_user.skills = []
      @skill_ids = params[:skills]
      @skill_ids.each { |skill_id| current_user.skills << Skill.find(skill_id) }
    end

    # Use callbacks to share common setup or constraints between actions.
    def set_user
      id = params[:id]
      @user = User.find(id)
    end

    def authorize_user
      redirect_to users_path if @user.id != current_user.id
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:picture, :first_name, :last_name, :age, :role, :skills, :bio, :portfolio_url, :occupation, :company, :location_id)
    end

    def redirect_to_donate
      redirect_to "/pages/donate" if current_user.stripe_payment != true
    end

    def redirect_to_update_profile
      if current_user.profile_complete != true
        redirect_to new_user_path, notice: 'You need to fill in your profile before you proceed!'
      end
    end
end