class UsersController < ApplicationController
  # before_action :set_user, only: %i[ show ]

  # GET /users or /users.json
  def index
    @users = current_user
  end
end
