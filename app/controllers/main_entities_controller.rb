class MainEntitiesController < ApplicationController
  before_action :set_main_entity, only: [:show, :edit, :update, :destroy]

  # GET /main_entities
  # GET /main_entities.json
  def index
    @main_entities = MainEntity.all
  end

  # GET /main_entities/1
  # GET /main_entities/1.json
  def show
  end

  # GET /main_entities/new
  def new
    @main_entity = MainEntity.new
  end

  # GET /main_entities/1/edit
  def edit
  end

  # POST /main_entities
  # POST /main_entities.json
  def create
    @main_entity = MainEntity.new(main_entity_params)

    respond_to do |format|
      if @main_entity.save
        format.html { redirect_to @main_entity, notice: 'Main entity was successfully created.' }
        format.json { render :show, status: :created, location: @main_entity }
      else
        format.html { render :new }
        format.json { render json: @main_entity.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /main_entities/1
  # PATCH/PUT /main_entities/1.json
  def update
    respond_to do |format|
      if @main_entity.update(main_entity_params)
        format.html { redirect_to @main_entity, notice: 'Main entity was successfully updated.' }
        format.json { render :show, status: :ok, location: @main_entity }
      else
        format.html { render :edit }
        format.json { render json: @main_entity.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /main_entities/1
  # DELETE /main_entities/1.json
  def destroy
    @main_entity.destroy
    respond_to do |format|
      format.html { redirect_to main_entities_url, notice: 'Main entity was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_main_entity
      @main_entity = MainEntity.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def main_entity_params
      params.require(:main_entity).permit(:name, :main_name, :creation_date, :status, :address)
    end
end
