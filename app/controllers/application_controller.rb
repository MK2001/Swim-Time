class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  def search
    search = params['search']
    redirect_to 'https://www.google.com/#q=' + search.gsub(" ", "+")
  end
  
  def login_required
    swimmer = Swimmer.find_by(id: session['swimmer_id'])
    if swimmer.blank?
      redirect_to('/home')
    end
  end
end
