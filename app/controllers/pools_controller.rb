class PoolsController < ApplicationController

  def index
    @pools = Pool.all
    render json: @pools
  end

  def show
    @pool = Pool.find(params[:id])
    render json: @pool
  end

  def create
    @pool = Pool.create(pool_params)
    if @pool.save
      render json: @pool, status: :accepted
    else
      render json: { errors: @pool.errors.full_messages }, status: :unprocessible_entity
    end
  end

  def update
    @pool = Pool.find(params[:id])
    @pool.start_date = params[:pool][:start_date]
    if @pool.save
      render json: @pool, status: :accepted
    else
      render json: { errors: @pool.errors.full_messages }, status: :unprocessible_entity
    end
  end

  private

  def pool_params
    params.permit(:start_date)
  end

end
