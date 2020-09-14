class EventsController < ApplicationController
	before_action :find_event, except: [:new, :create, :index]
	before_action :authenticate_user!, only: [:new, :create,:index,:edit,:update,:destroy]

	def index
		@events = Event.all
	end
	
	def show
	end	

	
	def edit
	end	

	def update	
		Event.update(name: params[:event] [:name],category: params[:event] [:category],place: params[:event] [:place],address: params[:event] [:address],datestart: params[:event] [:datestart],datefinish: params[:event] [:datefinish],type: params[:event] [:type])
		
		redirect_to @event
	end	


	def new
		@event = Event.new
	end

	def create	
		Event.create(name: params[:event] [:name],category: params[:event] [:category],place: params[:event] [:place],address: params[:event] [:address],datestart: params[:event] [:datestart],datefinish: params[:event] [:datefinish],type: params[:event] [:type])
	end


	def destroy
		@event.destroy
		redirect_to root_path
	end	

	def find_event
		@event = Event.find(params[:id])
	end
end