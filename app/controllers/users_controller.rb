class UsersController < ApplicationController
  def new
  end

  def create
  
  end

  def show
    @user = User.find(params[:id])
  end 

  def index
  end

  def edit
    @user = User.new
  end

  def update
    @user = User.new(first_name: params[:first_name].humanize, last_name: params[:last_name].humanize, description: params[:description])

    if @user.save
      redirect_to events_path, notice: "Bienvenue, #{@user.first_name} !"
    else
      render 'new'
      flash.alert = "Il y a un problème, recommence"
    end
  end

  def delete
  end
end
