class SessionsController < ApplicationController
  def new
  end
  
  def create
    s = Swimmer.find_by(name: params['username'])
    if s && s.authenticate(params['password'])
      session['swimmer_id'] = s.id
      redirect_to '/home'
    else
      redirect_to '/new_swimmer'
    end
  end
  
  def destroy
    reset_session
    redirect_to "/sessions/new"
  end
end

