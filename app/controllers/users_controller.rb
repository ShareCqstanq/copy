class UsersController < ApplicationController

  before_action :set_search
  before_action :authenticate_user!, only: [:card, :logout]

  def show
    @user = User.find(params[:id])
  end

  def edit
  end

  def login
  end

  def logout
    
  end

  def card
  end

  private

  def set_search
    @q = Item.search(params[:q])
  end
end
