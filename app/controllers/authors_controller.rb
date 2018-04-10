class AuthorsController < ApplicationController
  def index
    @authors = Author.all
  end

  def show
    @author = Author.find_by(id: params[:id])
  end

  def edit
    @author = Author.find_by(id: params[:id])
  end

  def update
    author = Author.find_by(id: params[:id])
    author.update(author_params)
    redirect_to author_path(params[:id])
  end

  def new
    @author = Author.new
  end

  def create
    Author.create(author_params)
    redirect_to authors_path
  end

  def destroy
    @author = Author.find_by(id: params[:id])
    @author.destroy
    redirect_back fallback_location: :authors_path
  end

  private
  def author_params
    return params.require(:author).permit(:name, :id)
  end
end
