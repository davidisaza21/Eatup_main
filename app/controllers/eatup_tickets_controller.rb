class EatupTicketsController < ApplicationController
  before_action :set_eatup_ticket, only: [:show, :edit, :update, :destroy]

  # GET /eatup_tickets
  # GET /eatup_tickets.json
  def index
    @eatup_tickets = EatupTicket.all
  end

  # GET /eatup_tickets/1
  # GET /eatup_tickets/1.json
  def show
  end

  # GET /eatup_tickets/new
  def new
    @eatup_ticket = EatupTicket.new
  end

  # GET /eatup_tickets/1/edit
  def edit
  end

  # POST /eatup_tickets
  # POST /eatup_tickets.json
  def create
    @eatup_ticket = EatupTicket.new(eatup_ticket_params)

    respond_to do |format|
      if @eatup_ticket.save
        format.html { redirect_to @eatup_ticket, notice: 'Eatup ticket was successfully created.' }
        format.json { render :show, status: :created, location: @eatup_ticket }
      else
        format.html { render :new }
        format.json { render json: @eatup_ticket.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /eatup_tickets/1
  # PATCH/PUT /eatup_tickets/1.json
  def update
    respond_to do |format|
      if @eatup_ticket.update(eatup_ticket_params)
        format.html { redirect_to @eatup_ticket, notice: 'Eatup ticket was successfully updated.' }
        format.json { render :show, status: :ok, location: @eatup_ticket }
      else
        format.html { render :edit }
        format.json { render json: @eatup_ticket.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /eatup_tickets/1
  # DELETE /eatup_tickets/1.json
  def destroy
    @eatup_ticket.destroy
    respond_to do |format|
      format.html { redirect_to eatup_tickets_url, notice: 'Eatup ticket was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_eatup_ticket
      @eatup_ticket = EatupTicket.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def eatup_ticket_params
      params.require(:eatup_ticket).permit(:ticket_number, :eatup_user_id, :eatup_event_id)
    end
end
