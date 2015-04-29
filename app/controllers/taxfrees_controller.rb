# -*- encoding: UTF-8 -*-
class TaxfreesController < ApplicationController
  before_action :set_taxfree, only: [:show, :edit, :update, :destroy]

  # GET /taxfrees
  # GET /taxfrees.json
  def index
    @taxfrees = Taxfree.all
  end

  # GET /taxfrees/1
  # GET /taxfrees/1.json
  def show
  end

  # GET /taxfrees/new
  def new
    @taxfree = Taxfree.new
    @taxfree.user_name ='1234:海辺店 海辺太郎'
    @taxfree.taxpaymentoffice = '札幌東税務署'
    @taxfree.taxpaymentplace = '札幌市'
    @taxfree.sex_id = 3
    @taxfree.visastatus_id = 1
  end

  # GET /taxfrees/1/edit
  def edit
  end

  # POST /taxfrees
  # POST /taxfrees.json
  def create
    @taxfree = Taxfree.new(taxfree_params)

    respond_to do |format|
      if @taxfree.save
        format.html { redirect_to @taxfree, notice: 'Taxfree was successfully created.' }
        format.json { render :show, status: :created, location: @taxfree }
      else
        format.html { render :new }
        format.json { render json: @taxfree.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /taxfrees/1
  # PATCH/PUT /taxfrees/1.json
  def update
    respond_to do |format|
      if @taxfree.update(taxfree_params)
        format.html { redirect_to @taxfree, notice: 'Taxfree was successfully updated.' }
        format.json { render :show, status: :ok, location: @taxfree }
      else
        format.html { render :edit }
        format.json { render json: @taxfree.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /taxfrees/1
  # DELETE /taxfrees/1.json
  def destroy
    @taxfree.destroy
    respond_to do |format|
      format.html { redirect_to taxfrees_url, notice: 'Taxfree was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_taxfree
      @taxfree = Taxfree.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def taxfree_params
      params.require(:taxfree).permit(:user_id, :user_name, :nationality_id, :nationality_name, :name, :passport, :birthday, :sex_id, :visastatus_id, :landingdate, :taxfreeflg_id, :taxpaymentplace, :taxpaymentoffice, :note)
    end
end
