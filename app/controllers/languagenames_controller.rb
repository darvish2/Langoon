class LanguagenamesController < ApplicationController
  before_action :set_languagename, only: [:show, :edit, :update, :destroy]

  def contents
  end

  def japanese
    @posts = Languagename.japanese.map(&:posts).flatten
  end

def english
    @posts = Languagename.english.map(&:posts).flatten
  end

def french
    @posts = Languagename.french.map(&:posts).flatten
  end

def chinese
    @posts = Languagename.chinese.map(&:posts).flatten
  end

def spanish
    @posts = Languagename.spanish.map(&:posts).flatten
  end

def russian
    @posts = Languagename.russian.map(&:posts).flatten
  end

def arabic
    @posts = Languagename.arabic.map(&:posts).flatten
  end

def german
    @posts = Languagename.german.map(&:posts).flatten
  end

def italian
    @posts = Languagename.italian.map(&:posts).flatten
  end

def indonesian
    @posts = Languagename.indonesian.map(&:posts).flatten
  end

def malay
    @posts = Languagename.malay.map(&:posts).flatten
  end

def vietnamese
    @posts = Languagename.vietnamese.map(&:posts).flatten
  end

def swedish
    @posts = Languagename.swedish.map(&:posts).flatten
  end

def hebrew
    @posts = Languagename..map(&:posts).flatten
  end

def portuguese
    @posts = Languagename..map(&:posts).flatten
  end

def esperanto
    @posts = Languagename.esperanto.map(&:posts).flatten
  end

def vendergood
    @posts = Languagename.vendergood.map(&:posts).flatten
  end

def latin
    @posts = Languagename.latin.map(&:posts).flatten
  end

def greek
    @posts = Languagename.greek.map(&:posts).flatten
  end

def ainu
    @posts = Languagename.ainu.map(&:posts).flatten
  end

def korean
    @posts = Languagename.korean.map(&:posts).flatten
  end

def hawaiian
    @posts = Languagename.hawaiian.map(&:posts).flatten
  end

def turkish
    @posts = Languagename.turkish.map(&:posts).flatten
  end

def dutch
    @posts = Languagename.dutch.map(&:posts).flatten
  end

def ancient_japanese
    @posts = Languagename.ancient_japanese.map(&:posts).flatten
  end

def html
    @posts = Languagename.html.map(&:posts).flatten
  end

def css
    @posts = Languagename.css.map(&:posts).flatten
  end

def ruby
    @posts = Languagename.ruby.map(&:posts).flatten
  end

def javascript
    @posts = Languagename.javascript.map(&:posts).flatten
  end

def php
    @posts = Languagename.php.map(&:posts).flatten
  end

def sql
    @posts = Languagename.sql.map(&:posts).flatten
  end

def go
    @posts = Languagename.go.map(&:posts).flatten
  end

def c
    @posts = Languagename.c.map(&:posts).flatten
  end

def c_sharp
    @posts = Languagename..map(&:posts).flatten
  end

def c_plusplus
    @posts = Languagename..map(&:posts).flatten
  end

def kotlin
    @posts = Languagename.kotlin.map(&:posts).flatten
  end

def java
    @posts = Languagename.java.map(&:posts).flatten
  end

def python
    @posts = Languagename.python.map(&:posts).flatten
  end

def swift
    @posts = Languagename.swift.map(&:posts).flatten
  end

def sign_language
    @posts = Languagename.sign_language.map(&:posts).flatten
  end

def braille
    @posts = Languagename.braille.map(&:posts).flatten
  end

def newspeak
    @posts = Languagename.newspeak.map(&:posts).flatten
  end

def ancient_greek
    @posts = Languagename.ancient_greek.map(&:posts).flatten
  end

def ancient_latin
    @posts = Languagename.ancient_latin.map(&:posts).flatten
  end

def maori
    @posts = Languagename.maori.map(&:posts).flatten
  end

def luxemburgisch
    @posts = Languagename.luxemburgisch.map(&:posts).flatten
  end

def bengali
    @posts = Languagename.bengali.map(&:posts).flatten
  end

def sansklit
    @posts = Languagename.sansklit.map(&:posts).flatten
  end

def hieroglyph
    @posts = Languagename.hieroglyph.map(&:posts).flatten
  end

def swahili
    @posts = Languagename.swahili.map(&:posts).flatten
  end

def ryukyu
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
