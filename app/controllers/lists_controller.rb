class ListsController < ApplicationController

	# shows all of the tasks and orders them by deadline

	def show
		@users = User.all
		@lists = List.all
		@lists = List.order("completion_status DESC, deadline ASC")
	end

	# renders a show.html.erb

	def index
		render 'show'
	end

	def new
		@list = List.new
	end

	# creates a new task, saves it and redirects to /tasks

	def create
		@list = List.new(list_params)
		@list.save
			redirect_to '/tasks'
	end

	# deletes a specific task by id and redirects back to the same page, the request came from
	# might redo this to destroy instead if need arises

	def editList
		@list = List.find(params[:id])
	end

	def edit
		@list = List.find(params[:id])
  	end

  	def update
    	@list = List.find(params[:id])
    	@list.update_attributes(list_update_params)
    	redirect_to '/tasks'
  end

	def delete
		@list = List.find(params[:id])
		@list.delete
    	redirect_to '/tasks'
  	end

  	# unfinished multiple task destruction

  	def destroy_multiple
	    @list.delete(params[:id])
	    redirect_to '/tasks'
	end

	private

	# all the params that are being passed when creating a new task

	def list_update_params
		params.require(:list).permit(:description, :deadline, :completion_status, :userID)
	end

	def list_params
      params.require(:list).permit(:description, :deadline, :userID)
    end

end