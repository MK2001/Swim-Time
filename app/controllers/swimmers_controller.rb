class SwimmersController < ApplicationController
  before_filter :login_required, :except => [:index, :new, :create]

  def index
    @swimmers = Swimmer.all
  end

  def show
    @swimmer = Swimmer.find_by(id: params[:id])
  end

  def new
  end

  def create
    @swimmer = Swimmer.new
    @swimmer.name = params[:name]
    @swimmer.username = params[:username]
    @swimmer.password = params[:password]
    @swimmer.password = params[:password_confirmation]

    if @swimmer.save
      redirect_to "/swimmers/#{ @swimmer.id }"
    else
      render 'new'
    end
  end

  def edit
    @swimmer = Swimmer.find_by(id: params[:id])
    if @swimmer.id != session['sid']
      redirect_to "/swimmers", :notice => "Can't access #{@swimmer.name}, fool"
    end
  end

  def update
    @swimmer = Swimmer.find_by(id: params[:id])
    @swimmer.name = params[:name]
    @swimmer.username = params[:username]
    @swimmer.password = params[:password]
    @swimmer.password = params[:password_confirmation]


    if @swimmer.save
      redirect_to "/swimmers/#{ @swimmer.id }"
    else
      render 'edit'
    end
  end

  def destroy
    @swimmer = Swimmer.find_by(id: params[:id])
    @swimmer.destroy
    redirect_to "/swimmers"
  end
  
  def aboutus
  end
  
  def team
  end
  
   def lessons
    end
  
  def upcoming
  end
end

