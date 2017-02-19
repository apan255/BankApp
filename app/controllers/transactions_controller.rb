class TransactionsController < ApplicationController
  # GET /recipes
  # GET /recipes.json

 def user_params
    params.require(:user).permit(:email, :password, :name, :role)
  end

  def index
    @users = User.all
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @users }
    end
  end

  # GET /recipes/1
  # GET /recipes/1.json
  def show
    @user = User.find(params[:email])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @user }
    end
  end

  # GET /recipes/new
  # GET /recipes/new.json
  def new
    @user = User.new

    respond_to do |format|
      format.html #new.html.erb
      format.json { render json: @user }
    end
  end

  # GET /recipes/1/edit
  def edit
    @user = User.find(params[:email])
  end

  # POST /recipes
  # POST /recipes.json
  def create
    @user = User.new(user_params)

    respond_to do |format|
      if @user.save
        format.html { redirect_to @user, notice: 'User was successfully created.' }
        format.json { render json: @user, status: :created, location: @user }
      else
        format.html { render action: "new" }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /recipes/1
  # PUT /recipes/1.json
  def update
    @user = User.find(params[:email])

    respond_to do |format|
      if @user.update_attributes(user_params)
        format.html { redirect_to @user, notice: 'User information successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /recipes/1
  # DELETE /recipes/1.json
  def destroy
    @user = User.find(params[:email])
    @user.destroy

    respond_to do |format|
      format.html { redirect_to recipes_url }
      format.json { head :no_content }
    end
  end
end
