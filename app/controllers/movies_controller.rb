class MoviesController < ApplicationController
  
  def index 
    @movies = session[:movies]
    # list all movies
  end

  def new 
    # create a new movie
  end

  def create

    if session[:movies] == nil
      session[:movies] = []
    end

    session[:movies].push(params[:movie])
    puts "session movie data"
    puts session[:movies]
    redirect_to movie_path(session[:movies].length - 1)
    # puts "create method-----"
    # puts params[:movie]

    # @movies = []
    # @movies.push(params[:movie])
    # puts @movies
    # post a new movie
  end


  def show
    @movie = session[:movies][params[:id].to_i]
    
    # show a single movie
  end

  def edit
    @movie = session[:movies][params[:id].to_i]
  end

  # update the movie

  def update 
    puts "Update method is executed"
    session[:movies][params[:id].to_i] = params[:movie]
    redirect_to movie_path(params[:id].to_i)
  end


end