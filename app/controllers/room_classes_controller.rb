class RoomClassesController < ApplicationController
  before_action :set_room_class, only: %i[ show edit update destroy ]

  # GET /room_classes or /room_classes.json
  def index
    @room_classes = RoomClass.all
  end

  # GET /room_classes/1 or /room_classes/1.json
  def show
  end

  # GET /room_classes/new
  def new
    @room_class = RoomClass.new
  end

  # GET /room_classes/1/edit
  def edit
  end

  # POST /room_classes or /room_classes.json
  def create
    @room_class = RoomClass.new(room_class_params)

    respond_to do |format|
      if @room_class.save
        format.html { redirect_to room_class_url(@room_class), notice: "Room class was successfully created." }
        format.json { render :show, status: :created, location: @room_class }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @room_class.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /room_classes/1 or /room_classes/1.json
  def update
    respond_to do |format|
      if @room_class.update(room_class_params)
        format.html { redirect_to room_class_url(@room_class), notice: "Room class was successfully updated." }
        format.json { render :show, status: :ok, location: @room_class }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @room_class.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /room_classes/1 or /room_classes/1.json
  def destroy
    @room_class.destroy

    respond_to do |format|
      format.html { redirect_to room_classes_url, notice: "Room class was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_room_class
      @room_class = RoomClass.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def room_class_params
      params.require(:room_class).permit(:room_class, :description)
    end
end
