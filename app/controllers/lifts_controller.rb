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

  # def average
  #   @lifts = Lift.all
  #   @lifts2 = @lifts.group_by { |item| item[:user_id] }
  #   @lifts3 = []
  #   @lifts2.each_value do |value|
  #     @lifts3.push(value.group_by { |i| i[:exercise]})
  #   end
  #   @lifts4 = {}
    # @lifts2.each_value do |value|
      # sum = 0
      # count = 0
      # for item in value
      #   if item.exercise == "Deadlift"
      #     sum += item.weight
      #     count += 1
      #   else
      #     sum += 0
      #     count += 1
      #   end
      # end
      # average = sum / count
      # if average
      # @lifts3.push(average)
      # end
    # @lifts3.each value do |value|
    #   sum = 0
    #   count = 0
    #   for item in value
    #
    #   end
    # end

  #   render json: @lifts2
  # end

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
