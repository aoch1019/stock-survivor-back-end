class EntriesController < ApplicationController

  def index
    @entries = Entry.all
    render json: @entries
  end

  def show
    @entry = Entry.find(params[:id])
    render json: @entry
  end

  def create
    @entry = Entry.create(entry_params)
    if @entry.save
      render json: @entry, status: :accepted
    else
      render json: { errors: @entry.errors.full_messages }, status: :unprocessible_entity
    end
  end

  def update
    @entry = Entry.find(params[:id])
    @entry.alive = params[:entry][:alive]
    if @entry.save
      render json: @entry, status: :accepted
    else
      render json: { errors: @entry.errors.full_messages }, status: :unprocessible_entity
    end
  end

  private

  def entry_params
    params.permit(:alive, :user_id, :pool_id)
  end

end
