class VisitorsController < ApplicationController
  before_action :authenticate_employee!
  before_action :set_visitor, only: [:show, :edit, :update, :destroy]
  # GET /visitors
  # GET /visitors.json
  def index
    @visitors = Visitor.all
    @park = Park.all
    @park_options = Park.all.map{|p| [p.pname, p.pno]}
    
  end

  # GET /visitors/1
  # GET /visitors/1.json
  def show
    @visitors = Visitor.all
    @park = Park.all
    @park_options = Park.all.map{|p| [p.pname, p.pno]}
  end

  # GET /visitors/new
  def new
    @park = Park.find_by(params[:pno])
    @park_options = Park.all.map{|p| [p.pname, p.pno]}
    @visitor = Visitor.new
  end

  # GET /visitors/1/edit
  def edit
    @park_options = Park.all.map{|p| [p.pname, p.pno]}
  end

  # POST /visitors
  # POST /visitors.json
  def create
    @park = Park.find_by(params[:visitor["visits"]])
    @park_options = Park.all.map{|p| [p.pname, p.pno]}
    @visitor = Visitor.new(visitor_params)

    respond_to do |format|
      if @visitor.save
        format.html { redirect_to @visitor, notice: 'Visitor was successfully created.' }
        format.json { render :show, status: :created, location: @visitor }
      else
        format.html { render :new }
        format.json { render json: @visitor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /visitors/1
  # PATCH/PUT /visitors/1.json
  def update
    respond_to do |format|
      if @visitor.update(visitor_params)
        format.html { redirect_to @visitor, notice: 'Visitor was successfully updated.' }
        format.json { render :show, status: :ok, location: @visitor }
      else
        format.html { render :edit }
        format.json { render json: @visitor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /visitors/1
  # DELETE /visitors/1.json
  def destroy
    @visitor.destroy
    respond_to do |format|
      format.html { redirect_to visitors_url, notice: 'Visitor was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_visitor
      @visitor = Visitor.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def visitor_params
      params.require(:visitor).permit(:vname, :vemail, :contact, :visitDate, :noOfTickets, :visits)
    end
end
