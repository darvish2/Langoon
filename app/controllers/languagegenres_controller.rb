class LanguagegenresController < ApplicationController
  before_action :set_languagegenre, only: [:show, :edit, :update, :destroy]

  # GET /languagegenres
  # GET /languagegenres.json
  def index
    @languagegenres = Languagegenre.all
  end

  # GET /languagegenres/1
  # GET /languagegenres/1.json
  #def show
    #@languagegenres = Languagegenre.find(params[:id]) 
    #@languagegenres.languagenames.id
  #end

  # GET /languagegenres/new
  def new
    @languagegenre = Languagegenre.new
  end

  # GET /languagegenres/1/edit
  def edit
  end

  # POST /languagegenres
  # POST /languagegenres.json
  def create
    @languagegenre = Languagegenre.new(languagegenre_params)

    respond_to do |format|
      if @languagegenre.save
        format.html { redirect_to @languagegenre, notice: 'Languagegenre was successfully created.' }
        format.json { render :show, status: :created, location: @languagegenre }
      else
        format.html { render :new }
        format.json { render json: @languagegenre.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /languagegenres/1
  # PATCH/PUT /languagegenres/1.json
  def update
    respond_to do |format|
      if @languagegenre.update(languagegenre_params)
        format.html { redirect_to @languagegenre, notice: 'Languagegenre was successfully updated.' }
        format.json { render :show, status: :ok, location: @languagegenre }
      else
        format.html { render :edit }
        format.json { render json: @languagegenre.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /languagegenres/1
  # DELETE /languagegenres/1.json
  def destroy
    @languagegenre.destroy
    respond_to do |format|
      format.html { redirect_to languagegenres_url, notice: 'Languagegenre was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_languagegenre
      @languagegenre = Languagegenre.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def languagegenre_params
      params.require(:languagegenre).permit(:language_genre)
    end
end
