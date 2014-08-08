class SessionsController<ApplicationController
  def new
  end
def create
  session['user_id'] = u.id
  redirect_to '/home'
end
  def destroy
    reset_session
    redirect_to "/sessions/new"
  end
end