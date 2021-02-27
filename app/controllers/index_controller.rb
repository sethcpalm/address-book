class IndexController < ApplicationController
    def index
        @contacts = Contact.all()
    end
end
