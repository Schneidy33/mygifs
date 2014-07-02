class GifsController < ApplicationController

  def index
    @gifs = Gif.all
  end

  def show
    @gif = Gif.find_by(id: params[:id])
  end

  def new
  end

  def create
    @gif = Gif.new
    @gif.url = params[:url]
    @gif.caption = params[:caption]

    if @gif.save
      redirect_to "/gifs/#{ @gif.id }"
    else
      render 'new'
    end
  end

  def edit
    @gif = Gif.find_by(id: params[:id])
  end

  def update
    @gif = Gif.find_by(id: params[:id])
    @gif.url = params[:url]
    @gif.caption = params[:caption]

    if @gif.save
      redirect_to "/gifs/#{ @gif.id }"
    else
      render 'edit'
    end
  end

  def destroy
    @gif = Gif.find_by(id: params[:id])
    @gif.destroy


    redirect_to "/gifs"
  end
end
