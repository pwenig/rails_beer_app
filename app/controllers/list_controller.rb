class ListController < ApplicationController

  def index
    @beer = Beer.all
  end

  def new

  end

  def create
    create_beer = Beer.new
    create_beer.name = params[:name]
    create_beer.kind = params[:kind]
    create_beer.description = params[:description]
    create_beer.save
    redirect_to '/'
  end

  def edit
    @beer = Beer.find(params[:id])
  end

  def update
    update_beer = Beer.find(params[:id])
    update_beer.name = params[:name]
    update_beer.kind = params[:kind]
    update_beer.description = params[:description]
    update_beer.save
    redirect_to '/'
  end
end