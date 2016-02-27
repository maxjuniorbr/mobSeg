class PeopleController < ApplicationController
  before_action :set_person, only: [:show, :edit, :update, :destroy]

  # GET /people
  # GET /people.json
  def index
    @people = Person.all.order(:id)
  end

  # GET /people/1
  # GET /people/1.json
  def show
  end

  # GET /people/new
  def new
    @person = Person.new
  end

  # GET /people/1/edit
  def edit
  end

  # POST /people
  # POST /people.json
  def create
    @person = Person.new(person_params)    

    # Clean wrong input values
    if @person.person_type_id == 1
      @person.metier_id = nil
      @person.contact = nil
    end

    if @person.person_type_id == 2
      @person.birth = nil
      @person.marital_status_id = nil
      @person.gender_id = nil
      @person.politically_exposed_person = nil
      @person.exposed_name = nil
      @person.occupation_id = nil
      @person.salary_range_id = nil
    end

    respond_to do |format|
      if @person.save
        format.html { redirect_to people_path, notice:  'Person was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  # PATCH/PUT /people/1
  # PATCH/PUT /people/1.json
  def update

    # Clean wrong input values
    if @person.person_type_id == 1
      @person.metier_id = nil
      @person.contact = nil
    end

    if @person.person_type_id == 2
      @person.birth = nil
      @person.marital_status_id = nil
      @person.gender_id = nil
      @person.politically_exposed_person = nil
      @person.exposed_name = nil
      @person.occupation_id = nil
      @person.salary_range_id = nil
    end

    respond_to do |format|
      if @person.update(person_params)
        format.html { redirect_to people_path, notice: 'Person was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  # DELETE /people/1
  # DELETE /people/1.json
  def destroy
    @person.destroy
    respond_to do |format|
      format.html { redirect_to people_url, notice: 'Person was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_person
    @person = Person.find(params[:id])

    # Esta pesquisa foi customizada para retornar o paciente indicador
    #@patient = Patient.edit_with_indication_name(params[:id])
    #@indication_patient_name = @patient.indication_patient_name
    #@addresses = Address.where(patient_id: params[:id])
    #@phones = Phone.where(patient_id: params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def person_params
    params.require(:person).permit(:name, :person_type_id, :accept_email, :metier_id, :contact, :birth, :marital_status_id, :gender_id, :politically_exposed_person, :exposed_name, :occupation_id, :salary_range_id)
  end
end
