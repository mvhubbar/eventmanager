class ExibitorsController < ApplicationController
  # GET /exibitors
  # GET /exibitors.json
  def index
    @exibitors = Exibitor.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @exibitors }
    end
  end

  # GET /exibitors/1
  # GET /exibitors/1.json
  def show
    @exibitor = Exibitor.find(params[:id])
    @exibitormeetings = @exibitor.sponsor.meeting

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @exibitor }
    end
  end

  # GET /exibitors/new
  # GET /exibitors/new.json
  def new
    @exibitor = Exibitor.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @exibitor }
    end
  end

  # GET /exibitors/1/edit
  def edit
    @exibitor = Exibitor.find(params[:id])
  end

  # POST /exibitors
  # POST /exibitors.json
  def create
    @exibitor = Exibitor.new(params[:exibitor])

    respond_to do |format|
      if @exibitor.save
        format.html { redirect_to @exibitor, notice: 'Exibitor was successfully created.' }
        format.json { render json: @exibitor, status: :created, location: @exibitor }
      else
        format.html { render action: "new" }
        format.json { render json: @exibitor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /exibitors/1
  # PUT /exibitors/1.json
  def update
    @exibitor = Exibitor.find(params[:id])

    respond_to do |format|
      if @exibitor.update_attributes(params[:exibitor])
        format.html { redirect_to @exibitor, notice: 'Exibitor was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @exibitor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /exibitors/1
  # DELETE /exibitors/1.json
  def destroy
    @exibitor = Exibitor.find(params[:id])
    @exibitor.destroy

    respond_to do |format|
      format.html { redirect_to exibitors_url }
      format.json { head :no_content }
    end
  end
end
