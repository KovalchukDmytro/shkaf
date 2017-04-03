class LoginController < ApplicationController
  def index
    if session[:error]!=nil
      @error = session[:error]
      session[:error]=nil
    end
  end
  def create
    login=params[:l]
    password=params[:p]
    u = User.find_by_login(login)
    if u!=nil && u.password==password
      session[:login]=u.login
    else
      session[:error] = 'Login incorrect'
      redirect_to login_index_path
      return
    end
    if u.position == "ADMIN"
      session[:name]=u.name
      session[:position]=u.position
      redirect_to admin_index_url
      return
    else
      redirect_to login_index_path
    end
  end
end
