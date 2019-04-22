class BookClubsController < ApplicationController
    def index
        @book_club = BookClub.all
        #render 'book_clubs/index.html.erb'
    end
    
    def show
        @book_club = BookClub.find(params[:id])
        #render 'book_clubs/show.html.erb'
    end

    def new
        @book_club = BookClub.new
        #render 'book_club/new.html.erb'
    end

    def create
        @book_club = BookClub.new(params.require(:book_club).permit(:name, :location, :meet_date, :members, :description, :book_id))
        if @book_club.save
            redirect_to book_club_url(@book_club), notice: "Book Club Sucessfully Created"
        else
            flash.now[:alert] = 'Error! Unable to creat Book Club'
            render :new
        end
    end

    def edit
        @book_club = BookClub.find(params[:id])
        #render 'book_clubs/edit.html.erb'
    end

    def update 
        @book_club = BookClub.find(params[:id])
        if @book_club.update(params.require(:book_club).permit(:members))
            redirect_to book_club_url(@book_club), notice: "Member added successfully"
        else
            flash.now[:alert] = 'Error! Unable to add'
            render :edit
        end  
    end
end
