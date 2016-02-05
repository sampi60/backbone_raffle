class EntriesController < ApplicationController
  respond_to :json

  def index
    respond_with Entry.all
  end

  def show
    respond_with Entry.find(params[:id])
  end

  def create
    respond_with Entry.create(permitted_params)
  end

  def update
    respond_with Entry.create(params[:id], permitted_params)
  end

  def destroy
    respond_with Entry.destroy(params[:id])
  end


  private

  def permitted_params
    params.require(:entry).permit(:id, :name, :winner, :created_at, :updated_at)
  end
end
