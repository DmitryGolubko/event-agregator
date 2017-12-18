class EventUsersController < ApplicationController
	def create
   @event = Event.find(params[:event_id])
   @event_user = @event.event_users.create(event_users_params)
   redirect_to event_path(@event)
 end

 private
   def event_users_params
   params.require(:event_user).permit(:user_id)
   end
end
