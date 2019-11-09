class SketchesController < ApplicationController
  def index
    @sketches = Sketch.all
  end

  def new
  end

  def create
    Sketches.create(name: params[:name], image: params[:image], text: params[:text])
  end

  private
  
  def sketch_params
    params.permit(:name, :image, :text)
  end
  
end
