class InformationPagesController < ApplicationController
  before_action :set_information_page, only: [:show, :edit, :update, :destroy]

  # GET /information_pages
  # GET /information_pages.json
  def index
    @information_pages = InformationPage.all
  end

  # GET /information_pages/1
  # GET /information_pages/1.json
  def show
  end

  # GET /information_pages/new
  def new
    @information_page = InformationPage.new
  end

  # GET /information_pages/1/edit
  def edit
  end

  # POST /information_pages
  # POST /information_pages.json
  def create
    @information_page = InformationPage.new(information_page_params)

    respond_to do |format|
      if @information_page.save
        format.html { redirect_to @information_page, notice: 'Information page was successfully created.' }
        format.json { render action: 'show', status: :created, location: @information_page }
      else
        format.html { render action: 'new' }
        format.json { render json: @information_page.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /information_pages/1
  # PATCH/PUT /information_pages/1.json
  def update
    respond_to do |format|
      if @information_page.update(information_page_params)
        format.html { redirect_to @information_page, notice: 'Information page was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @information_page.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /information_pages/1
  # DELETE /information_pages/1.json
  def destroy
    @information_page.destroy
    respond_to do |format|
      format.html { redirect_to information_pages_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_information_page
      @information_page = InformationPage.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def information_page_params
      params[:information_page]
    end
end
