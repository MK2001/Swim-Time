Rails.application.routes.draw do
  # Routes for the Time resource:
  # CREATE
  get '/new_swimmertime' => 'swimmer_times#new'
  get '/create_swimmertime' => 'swimmer_times#create'

  # READ
  get '/swimmertimes' => 'swimmer_times#index'
  get '/swimmertimes/:id' => 'swimmer_times#show'

  # UPDATE
  get '/swimmertimes/:id/edit' => 'swimmer_times#edit'
  get '/swimmertimes/:id/update' => 'swimmer_times#update'

  # DELETE
  get '/swimmertimes/:id/destroy' => 'swimmer_times#destroy'
  #------------------------------

  # Routes for the Event resource:
  # CREATE
  get '/new_event' => 'events#new'
  get '/create_event' => 'events#create'

  # READ
  get '/events' => 'events#index'
  get '/events/:id' => 'events#show'

  # UPDATE
  get '/events/:id/edit' => 'events#edit'
  get '/events/:id/update' => 'events#update'

  # DELETE
  get '/events/:id/destroy' => 'events#destroy'
  #------------------------------

  # Routes for the Attendance resource:
  # CREATE
  get '/new_attendance' => 'attendances#new'
  get '/create_attendance' => 'attendances#create'

  # READ
  get '/attendances' => 'attendances#index'
  get '/attendances/:id' => 'attendances#show'

  # UPDATE
  get '/attendances/:id/edit' => 'attendances#edit'
  get '/attendances/:id/update' => 'attendances#update'

  # DELETE
  get '/attendances/:id/destroy' => 'attendances#destroy'
  #------------------------------

  # Routes for the Meet resource:
  # CREATE
  get '/new_meet' => 'meets#new'
  get '/create_meet' => 'meets#create'

  # READ
  get '/meets' => 'meets#index'
  get '/meets/:id' => 'meets#show'

  # UPDATE
  get '/meets/:id/edit' => 'meets#edit'
  get '/meets/:id/update' => 'meets#update'

  # DELETE
  get '/meets/:id/destroy' => 'meets#destroy'
  #------------------------------

  # Routes for the Swimmer resource:
  # CREATE
  get '/new_swimmer' => 'swimmers#new'
  get '/create_swimmer' => 'swimmers#create'

  # READ
  get '/swimmers' => 'swimmers#index'
  get '/swimmers/:id' => 'swimmers#show'

  # UPDATE
  get '/swimmers/:id/edit' => 'swimmers#edit'
  get '/swimmers/:id/update' => 'swimmers#update'

  # DELETE
  get '/swimmers/:id/destroy' => 'swimmers#destroy'
  #------------------------------
  get '/sessions/new' => 'sessions#new'
  get '/create_sessions' => 'sessions#create'
  get '/sessions/destroy' => 'sessions#destroy'
  get '/home' => 'home#home'
  
  
  get '/search' => 'application#search'
  
  get '/about_us' => 'swimmers#aboutus'
  get '/team' => 'swimmers#team'
  get '/lessons' => 'swimmers#lessons'
  get '/upcoming' => 'swimmers#upcoming'
end
