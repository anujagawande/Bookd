class CommentsController < ApplicationController
  
    def index
        @comments = Comment.all
        #render 'comments/index.html.erb'
        
    end

    def show
        @comment = Comment.find(params[:id])
        # render 'comments/show.html.erb'
    end

    def new
        @comment = Comment.new
        @discussion = Discussion.find(params[:discussion])
        # render 'comments/new.html.erb'
    end

    def create
        @comment = Comment.new(params.require(:comment).permit(:user_id, :discussion_id, :message))

        if @comment.save!
            redirect_to discussion_path(@comment.discussion_id), notice: 'Comment was successfully posted'

        else
            flash[:alert] = "Error: Unable to create comment."
            redirect_to new_comment_path(:discussion => @comment.discussion_id)
        end
    end

    def edit
        @comment = Comment.find(params[:id])
        if @comment.user_id != current_person.user.id
            redirect_to discussion_path(@comment.discussion_id), notice: 'Account ID did not match Comment Author'
        end
        # render 'comments/edit.html.erb'
    end

    def update
        @comment = Comment.find(params[:id])
        if @comment.update(params.require(:comment).permit(:message))
            redirect_to discussion_path(@comment.discussion_id), notice: "Comment Updated"
        else
            flash.now[:alert] = 'Error! Unable to update comment.'
            render :edit
        end
    end

    def destroy
        @comment = Comment.find(params[:id])
        @comment.destroy
        redirect_to discussion_path(params[:discussion]), notice: 'Comment was successfully deleted.'
    end
end
