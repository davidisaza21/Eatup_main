class EatupEventsController < ApplicationController
  before_action :set_eatup_event, only: [:show, :edit, :update, :destroy]

  # GET /eatup_events
  # GET /eatup_events.json
  def index
    @eatup_events = EatupEvent.all
  end

  # GET /eatup_events/1
  # GET /eatup_events/1.json
  def show
  end

  # GET /eatup_events/new
  def new
    @eatup_event = EatupEvent.new
  end

  # GET /eatup_events/1/edit
  def edit
  end

  # POST /eatup_events
  # POST /eatup_events.json
  def create
    @eatup_event = EatupEvent.new(eatup_event_params)

    respond_to do |format|
      if @eatup_event.save
        format.html { redirect_to @eatup_event, notice: 'Eatup event was successfully created.' }
        format.json { render :show, status: :created, location: @eatup_event }
      else
        format.html { render :new }
        format.json { render json: @eatup_event.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /eatup_events/1
  # PATCH/PUT /eatup_events/1.json
  def update
    respond_to do |format|
      if @eatup_event.update(eatup_event_params)
        format.html { redirect_to @eatup_event, notice: 'Eatup event was successfully updated.' }
        format.json { render :show, status: :ok, location: @eatup_event }
      else
        format.html { render :edit }
        format.json { render json: @eatup_event.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /eatup_events/1
  # DELETE /eatup_events/1.json
  def destroy
    @eatup_event.destroy
    respond_to do |format|
      format.html { redirect_to eatup_events_url, notice: 'Eatup event was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_eatup_event
      @eatup_event = EatupEvent.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def eatup_event_params
      params.require(:eatup_event).permit(:name, :chef, :date, :price, :description)
    end
end
