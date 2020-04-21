class LanguagenamesController < ApplicationController
  before_action :set_languagename, only: [:show, :edit, :update, :destroy]

  def contents
  end

  def japanese
    @posts = Languagename.japanese.map(&:posts).flatten
  end



  # GET /languagenames
  # GET /languagenames.json
  def index
    @languagenames = Languagename.all
  end

  # GET /languagenames/1
  # GET /languagenames/1.json
  def show
  end

  # GET /languagenames/new
  def new
    @languagename = Languagename.new
  end

  # GET /languagenames/1/edit
  def edit
  end

  # POST /languagenames
  # POST /languagenames.json
  def create
    @languagename = Languagename.new(languagename_params)

    respond_to do |format|
      if @languagename.save
        format.html { redirect_to @languagename, notice: 'Languagename was successfully created.' }
        format.json { render :show, status: :created, location: @languagename }
      else
        format.html { render :new }
        format.json { render json: @languagename.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /languagenames/1
  # PATCH/PUT /languagenames/1.json
  def update
    respond_to do |format|
      if @languagename.update(languagename_params)
        format.html { redirect_to @languagename, notice: 'Languagename was successfully updated.' }
        format.json { render :show, status: :ok, location: @languagename }
      else
        format.html { render :edit }
        format.json { render json: @languagename.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /languagenames/1
  # DELETE /languagenames/1.json
  def destroy
    @languagename.destroy
    respond_to do |format|
      format.html { redirect_to languagenames_url, notice: 'Languagename was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_languagename
      @languagename = Languagename.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def languagename_params
      params.require(:languagename).permit(:language_name)
    end
  end
