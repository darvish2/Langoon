class LanguagenamesController < ApplicationController
  before_action :set_languagename, only: [:show, :edit, :update, :destroy]

  def contents
  end




  def l_japanese
    @posts = Languagename.japanese.map(&:posts).flatten
  end

  def l_english
    @posts = Languagename.english.map(&:posts).flatten
  end

  def l_french
    @posts = Languagename.french.map(&:posts).flatten
  end

  def l_chinese
    @posts = Languagename.chinese.map(&:posts).flatten
  end

  def l_spanish
    @posts = Languagename.spanish.map(&:posts).flatten
  end

  def l_russian
    @posts = Languagename.russian.map(&:posts).flatten
  end

  def l_arabic
    @posts = Languagename.arabic.map(&:posts).flatten
  end

  def l_german
    @posts = Languagename.german.map(&:posts).flatten
  end

  def l_italian
    @posts = Languagename.italian.map(&:posts).flatten
  end

  def l_indonesian
    @posts = Languagename.indonesian.map(&:posts).flatten
  end

  def l_malay
    @posts = Languagename.malay.map(&:posts).flatten
  end

  def l_vietnamese
    @posts = Languagename.vietnamese.map(&:posts).flatten
  end

  def l_swedish
    @posts = Languagename.swedish.map(&:posts).flatten
  end

  def l_hebrew
    @posts = Languagename.hebrew.map(&:posts).flatten
  end

  def l_portuguese
    @posts = Languagename.portuguese.map(&:posts).flatten
  end

  def l_esperanto
    @posts = Languagename.esperanto.map(&:posts).flatten
  end

  def l_vendergood
    @posts = Languagename.vendergood.map(&:posts).flatten
  end

  def l_latin
    @posts = Languagename.latin.map(&:posts).flatten
  end

  def l_greek
    @posts = Languagename.greek.map(&:posts).flatten
  end

  def l_ainu
    @posts = Languagename.ainu.map(&:posts).flatten
  end

  def l_korean
    @posts = Languagename.korean.map(&:posts).flatten
  end

  def l_hawaiian
    @posts = Languagename.hawaiian.map(&:posts).flatten
  end

  def l_turkish
    @posts = Languagename.turkish.map(&:posts).flatten
  end

  def l_dutch
    @posts = Languagename.dutch.map(&:posts).flatten
  end

  def l_ancient_japanese
    @posts = Languagename.ancient_japanese.map(&:posts).flatten
  end

  def l_html
    @posts = Languagename.html.map(&:posts).flatten
  end

  def l_css
    @posts = Languagename.css.map(&:posts).flatten
  end

  def l_ruby
    @posts = Languagename.ruby.map(&:posts).flatten
  end

  def l_javascript
    @posts = Languagename.javascript.map(&:posts).flatten
  end

  def l_php
    @posts = Languagename.php.map(&:posts).flatten
  end

  def l_sql
    @posts = Languagename.sql.map(&:posts).flatten
  end

  def l_go
    @posts = Languagename.go.map(&:posts).flatten
  end

  def l_c
    @posts = Languagename.c.map(&:posts).flatten
  end

  def l_c_sharp
    @posts = Languagename.c_sharp.map(&:posts).flatten
  end

  def l_c_plusplus
    @posts = Languagename.c_plusplus.map(&:posts).flatten
  end

  def l_kotlin
    @posts = Languagename.kotlin.map(&:posts).flatten
  end

  def l_java
    @posts = Languagename.java.map(&:posts).flatten
  end

  def l_python
    @posts = Languagename.python.map(&:posts).flatten
  end

  def l_swift
    @posts = Languagename.swift.map(&:posts).flatten
  end

  def l_sign_language
    @posts = Languagename.sign_language.map(&:posts).flatten
  end

  def l_braille
    @posts = Languagename.braille.map(&:posts).flatten
  end

  def l_newspeak
    @posts = Languagename.newspeak.map(&:posts).flatten
  end

  def l_ancient_greek
    @posts = Languagename.ancient_greek.map(&:posts).flatten
  end

  def l_ancient_latin
    @posts = Languagename.ancient_latin.map(&:posts).flatten
  end

  def l_maori
    @posts = Languagename.maori.map(&:posts).flatten
  end

  def l_luxemburgisch
    @posts = Languagename.luxemburgisch.map(&:posts).flatten
  end

  def l_bengali
    @posts = Languagename.bengali.map(&:posts).flatten
  end

  def l_sansklit
    @posts = Languagename.sansklit.map(&:posts).flatten
  end

  def l_hieroglyph
    @posts = Languagename.hieroglyph.map(&:posts).flatten
  end

  def l_swahili
    @posts = Languagename.swahili.map(&:posts).flatten
  end

  def l_ryukyu
    @posts = Languagename.ryukyu.map(&:posts).flatten
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
