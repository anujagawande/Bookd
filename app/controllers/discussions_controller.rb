class DiscussionsController < ApplicationController



    def index
        @discussion = Discussion.all
        #render 'discussions/index.html.erb'
        
    end

    def new
        @discussion = Discussion.new
        # render 'discussion/new.html.erb'
    end

    def show
        @discussion = Discussion.find(params[:id])
        # render 'discussions/show.html.erb'
       
    end

    def create
        @discussion = Discussion.new(params.require(:discussion).permit(:title, :message, :book_id, :user_id))

        if @discussion.save
            redirect_to discussion_url(@discussion), notice: 'Discussion created!'

        else
            flash.now[:alert] = "Error: Unable to create Discussion."
            render :new
        end
    end
    def destroy
        @discussion = Discussion.find(params[:id])
        @discussion.destroy
       redirect_to discussions_path 
    end

end
