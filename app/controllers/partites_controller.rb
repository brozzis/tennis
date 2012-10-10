class PartitesController < ApplicationController
  # GET /partites
  # GET /partites.json
  def index
    @partites = Partite.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @partites }
    end
  end

  # GET /partites/1
  # GET /partites/1.json
  def show
    @partite = Partite.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @partite }
    end
  end

  # GET /partites/new
  # GET /partites/new.json
  def new
    @partite = Partite.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @partite }
    end
  end

  # GET /partites/1/edit
  def edit
    @partite = Partite.find(params[:id])
  end

  # POST /partites
  # POST /partites.json
  def create
    @partite = Partite.new(params[:partite])

    respond_to do |format|
      if @partite.save
        format.html { redirect_to @partite, notice: 'Partite was successfully created.' }
        format.json { render json: @partite, status: :created, location: @partite }
      else
        format.html { render action: "new" }
        format.json { render json: @partite.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /partites/1
  # PUT /partites/1.json
  def update
    @partite = Partite.find(params[:id])

    respond_to do |format|
      if @partite.update_attributes(params[:partite])
        format.html { redirect_to @partite, notice: 'Partite was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @partite.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /partites/1
  # DELETE /partites/1.json
  def destroy
    @partite = Partite.find(params[:id])
    @partite.destroy

    respond_to do |format|
      format.html { redirect_to partites_url }
      format.json { head :no_content }
    end
  end
end
