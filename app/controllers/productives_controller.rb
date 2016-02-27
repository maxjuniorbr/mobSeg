class ProductivesController < ApplicationController
  before_action :set_productive, only: [:show, :edit, :update, :destroy]

  # GET /productives
  # GET /productives.json
  def index
    @productives = Productive.all
  end

  # GET /productives/1
  # GET /productives/1.json
  def show
  end

  # GET /productives/new
  def new
    @productive = Productive.new
  end

  # GET /productives/1/edit
  def edit
  end

  # POST /productives
  # POST /productives.json
  def create
    @productive = Productive.new(productive_params)

    respond_to do |format|
      if @productive.save
        format.html { redirect_to @productive, notice: 'Productive was successfully created.' }
        format.json { render :show, status: :created, location: @productive }
      else
        format.html { render :new }
        format.json { render json: @productive.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /productives/1
  # PATCH/PUT /productives/1.json
  def update
    respond_to do |format|
      if @productive.update(productive_params)
        format.html { redirect_to @productive, notice: 'Productive was successfully updated.' }
        format.json { render :show, status: :ok, location: @productive }
      else
        format.html { render :edit }
        format.json { render json: @productive.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /productives/1
  # DELETE /productives/1.json
  def destroy
    @productive.destroy
    respond_to do |format|
      format.html { redirect_to productives_url, notice: 'Productive was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_productive
      @productive = Productive.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def productive_params
      params.require(:productive).permit(:name, :short_name, :gender_id, :cpf, :email, :birth, :status)
    end
end
