class DumiesController < ApplicationController
  before_action :set_dumy, only: [:show, :edit, :update, :destroy]

  # GET /dumies
  # GET /dumies.json
  def index
    @dumies = Dumy.all
  end

  # GET /dumies/1
  # GET /dumies/1.json
  def show
  end

  # GET /dumies/new
  def new
    @dumy = Dumy.new
  end

  # GET /dumies/1/edit
  def edit
  end

  # POST /dumies
  # POST /dumies.json
  def create
    @dumy = Dumy.new(dumy_params)

    respond_to do |format|
      if @dumy.save
        format.html { redirect_to @dumy, notice: 'Dumy was successfully created.' }
        format.json { render :show, status: :created, location: @dumy }
      else
        format.html { render :new }
        format.json { render json: @dumy.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dumies/1
  # PATCH/PUT /dumies/1.json
  def update
    respond_to do |format|
      if @dumy.update(dumy_params)
        format.html { redirect_to @dumy, notice: 'Dumy was successfully updated.' }
        format.json { render :show, status: :ok, location: @dumy }
      else
        format.html { render :edit }
        format.json { render json: @dumy.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dumies/1
  # DELETE /dumies/1.json
  def destroy
    @dumy.destroy
    respond_to do |format|
      format.html { redirect_to dumies_url, notice: 'Dumy was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dumy
      @dumy = Dumy.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def dumy_params
      params.fetch(:dumy, {})
    end
end
