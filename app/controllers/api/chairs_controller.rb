class Api::ChairsController < ApplicationController
  def index
    @chair = Chair.all
    render 'index.json.jb'
  end

  def show
    @chair = Chair.find_by(id: params[:id])
    render 'show.json.jb'
  end
  def create
    @chair = Chair.new(
      price: params[:price],
      description: params[:description],
      color: params[:color]
      )
    @chair.save!
    render 'show.json.jb'
  end
  def update
    @chair = Chair.find_by(id: params[:id])
    @chair.price = params[:price] || @chair.price
    @chair.description = params[:description] || @chair.description
    @chair.color = params[:color] || @chair.color
    @chair.save!
    render 'show.json.jb'
  end
  def destroy
    @chair = Chair.find_by(id: params[:id])
    @chair.destroy
    render 'destroy.json.jb'
  end
end
