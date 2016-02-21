class SusepsController < ApplicationController
  before_action :set_susep, only: [:show, :edit, :update, :destroy]

  # GET /suseps
  # GET /suseps.json
  def index
    @suseps = Susep.all
  end

  # GET /suseps/1
  # GET /suseps/1.json
  def show
  end

  # GET /suseps/new
  def new
    @susep = Susep.new
  end

  # GET /suseps/1/edit
  def edit
  end

  # POST /suseps
  # POST /suseps.json
  def create
    @susep = Susep.new(susep_params)

    respond_to do |format|
      if @susep.save
        format.html { redirect_to @susep, notice: 'Susep was successfully created.' }
        format.json { render :show, status: :created, location: @susep }
      else
        format.html { render :new }
        format.json { render json: @susep.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /suseps/1
  # PATCH/PUT /suseps/1.json
  def update
    respond_to do |format|
      if @susep.update(susep_params)
        format.html { redirect_to @susep, notice: 'Susep was successfully updated.' }
        format.json { render :show, status: :ok, location: @susep }
      else
        format.html { render :edit }
        format.json { render json: @susep.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /suseps/1
  # DELETE /suseps/1.json
  def destroy
    @susep.destroy
    respond_to do |format|
      format.html { redirect_to suseps_url, notice: 'Susep was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_susep
      @susep = Susep.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def susep_params
      params.require(:susep).permit(:insurer_id, :person_id, :value)
    end
end
