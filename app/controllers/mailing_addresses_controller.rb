class MailingAddressesController < ApplicationController
  before_action :set_mailing_address, only: [:show, :edit, :update, :destroy]

  # GET /mailing_addresses
  # GET /mailing_addresses.json
  def index
    @mailing_addresses = MailingAddress.all
  end

  # GET /mailing_addresses/1
  # GET /mailing_addresses/1.json
  def show
  end

  # GET /mailing_addresses/new
  def new
    @mailing_address = MailingAddress.new
  end

  # GET /mailing_addresses/1/edit
  def edit
  end

  # POST /mailing_addresses
  # POST /mailing_addresses.json
  def create
    @mailing_address = MailingAddress.new(mailing_address_params)

    respond_to do |format|
      if @mailing_address.save
        format.html { redirect_to @mailing_address, notice: 'Mailing address was successfully created.' }
        format.json { render :show, status: :created, location: @mailing_address }
      else
        format.html { render :new }
        format.json { render json: @mailing_address.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mailing_addresses/1
  # PATCH/PUT /mailing_addresses/1.json
  def update
    respond_to do |format|
      if @mailing_address.update(mailing_address_params)
        format.html { redirect_to @mailing_address, notice: 'Mailing address was successfully updated.' }
        format.json { render :show, status: :ok, location: @mailing_address }
      else
        format.html { render :edit }
        format.json { render json: @mailing_address.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mailing_addresses/1
  # DELETE /mailing_addresses/1.json
  def destroy
    @mailing_address.destroy
    respond_to do |format|
      format.html { redirect_to mailing_addresses_url, notice: 'Mailing address was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mailing_address
      @mailing_address = MailingAddress.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mailing_address_params
      params.require(:mailing_address).permit(:value)
    end
end
