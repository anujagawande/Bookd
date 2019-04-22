class UsersController < ApplicationController

    def show
        @user = User.find(params[:id])
        # render 'users/show.html.erb'
    end

    def edit
        @user = current_person.user
        # render 'users/edit.html.erb'
    end

    def update
        @user = current_person.user
        if @user.update(params.require(:user).permit(:username, :age, :career, :hobbies, :fav_genre, :recommendations, :picture))
            redirect_to user_url(@user), notice: "Profile Updated"
        else
            flash.now[:alert] = 'Error! Unable to update profile.'
            render :edit
        end
    end

    def new
        @user = User.new
        # render 'users/new.html.erb'
    end

    def create
        @user = User.new(params.require(:user).permit(:username, :age, :career, :hobbies, :fav_genre, :recommendations, :person_id, :picture))

        if @user.save
            redirect_to edit_person_registration_path, notice: 'Profile was successfully created'

        else
            flash[:alert] = "Error: Unable to create profile."
            render :new
        end
    end
end