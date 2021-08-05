class HomeController < ApplicationController
    def index

    end
    def about
        @title = 'About';
        @content = 'This is about page';
    end
    def new

    end
end

