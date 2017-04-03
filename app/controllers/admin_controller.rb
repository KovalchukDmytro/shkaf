class AdminController < ApplicationController
  def index
    @position=session[:position]
    session[:position]=nil
    @name=session[:name]
    session[:name]=nil
  end

end
