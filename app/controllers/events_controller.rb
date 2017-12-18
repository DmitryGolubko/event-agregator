class EventsController < ApplicationController

  load_and_authorize_resource

  def index
  @events = Event.all
  end

  def show
    @event = Event.find(params[:id])
  end

  def new
    authorize! :create, Event, :message => "Unable to access this page."
    @event = Event.new
  end

  def edit
    @event = Event.find(params[:id])
  end

  def create

    @event = Event.new(event_params)
    @event.user_id = current_user.id
  if @event.save
      redirect_to @event
    else
      render 'new'
    end
  end

  def update
    # authorize! :update, @event
    @event = Event.find(params[:id])
    if @event.update(event_params)
      redirect_to @event
    else
      render 'edit'
    end
  end

  def destroy
    # authorize! :destroy, @event
    @event = Event.find(params[:id])
    @event.destroy

    redirect_to events_path
  end

  def delete_user_from_event
    @user = EventUser.find_by(:event_id => params[:event_id], :user_id => params[:user_id])
    @user.destroy
    @event = Event.find(params[:event_id])
    redirect_to @event
  end


private
  def event_params
    params.require(:event).permit(:title, :text, :date, :place, :logo)
  end
end
