class HomeController < ApplicationController
  def index
    if current_user
      @activity_groups = current_user.activity_groups
    end
  end
end
