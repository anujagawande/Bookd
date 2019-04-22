class PagesController < ApplicationController
    skip_before_action :authenticate_person!, only: [:home]

    
    def home
        # render 'home.html.erb'
      end

    def search
        # render 'search.htm.erb'
    end

end
