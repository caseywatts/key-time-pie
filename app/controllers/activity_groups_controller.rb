class ActivityGroupsController < ApplicationController
  before_filter :authenticate_user!
  #before_filter :correct_user?, :except => [:index]

  def index
    @activity_groups = ActivityGroup.all
  end

  def new
    @activity_group = ActivityGroup.new
  end

  def create
    @activity_group = ActivityGroup.create(params[:activity_group])
    @activity_group.user = current_user
    if @activity_group.update_attributes(params[:activity_group])
      redirect_to '/'
    else
      render :edit ##lol?
    end

  end

  def edit
    @activity_group = ActivityGroup.find(params[:id])
  end
  
  def update
    @activity_group = ActivityGroup.find(params[:id])
    if @activity_group.update_attributes(params[:activity_group])
      redirect_to :action => :edit
    else
      redirect_to :action => :edit
    end
  end


  def show
    @activity_group = ActivityGroup.find(params[:id])
  end

end
