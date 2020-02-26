# frozen_string_literal: true

class LiftsController < ProtectedController
  before_action :set_lift, only: %i[show update destroy]

  # GET /lifts
  def index
    # @lifts = Lift.all
    @lifts2 = Lift.where(user_id: current_user.id)
    # @lift = Lift.where(:user_id => current_user.id)
    render json: @lifts2
  end

  # GET /lifts/1
  def show
    render json: @lift
  end

  # POST /lifts
  def create
    @lift = current_user.lifts.build(lift_params)

    if @lift.save
      render json: @lift, status: :created, location: @lift
    else
      render json: @lift.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /lifts/1
  def update
    if @lift.update(lift_params)
      render json: @lift
    else
      render json: @lift.errors, status: :unprocessable_entity
    end
  end

  # DELETE /lifts/1
  def destroy
    @lift.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_lift
    @lift = current_user.lifts.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def lift_params
    params.require(:lift).permit(:exercise, :weight, :reps, :user_id)
  end
end
