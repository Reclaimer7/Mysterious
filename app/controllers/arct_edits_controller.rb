class ArctEditsController < ApplicationController
  before_action :set_arct_edit, only: [:show, :edit, :update, :destroy]

  # GET /arct_edits
  # GET /arct_edits.json
  def index
    @arct_edits = ArctEdit.all
  end

  # GET /arct_edits/1
  # GET /arct_edits/1.json
  def show
  end

  # GET /arct_edits/new
  def new
    @arct_edit = ArctEdit.new
  end

  # GET /arct_edits/1/edit
  def edit
  end

  # POST /arct_edits
  # POST /arct_edits.json
  def create
    @arct_edit = ArctEdit.new(arct_edit_params)

    respond_to do |format|
      if @arct_edit.save
        format.html { redirect_to @arct_edit, notice: 'Arct edit was successfully created.' }
        format.json { render :show, status: :created, location: @arct_edit }
      else
        format.html { render :new }
        format.json { render json: @arct_edit.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /arct_edits/1
  # PATCH/PUT /arct_edits/1.json
  def update
    respond_to do |format|
      if @arct_edit.update(arct_edit_params)
        format.html { redirect_to @arct_edit, notice: 'Arct edit was successfully updated.' }
        format.json { render :show, status: :ok, location: @arct_edit }
      else
        format.html { render :edit }
        format.json { render json: @arct_edit.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /arct_edits/1
  # DELETE /arct_edits/1.json
  def destroy
    @arct_edit.destroy
    respond_to do |format|
      format.html { redirect_to arct_edits_url, notice: 'Arct edit was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_arct_edit
      @arct_edit = ArctEdit.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def arct_edit_params
      params.require(:arct_edit).permit(:title, :text)
    end
end
