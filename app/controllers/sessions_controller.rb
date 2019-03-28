class SessionsController < ApplicationController

def new

end

def create

flash[:success] = "It worked."

redirect_to root_path

end

end
