class ExibitorCategoriesController < ApplicationController
  # GET /exibitor_categories
  # GET /exibitor_categories.json
  def index
    @exibitor_categories = ExibitorCategory.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @exibitor_categories }
    end
  end

  # GET /exibitor_categories/1
  # GET /exibitor_categories/1.json
  def show
    @exibitor_category = ExibitorCategory.find(params[:id])
    @exibitors_in_category = @exibitor_category.exibitor

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @exibitor_category }
    end
  end

  # GET /exibitor_categories/new
  # GET /exibitor_categories/new.json
  def new
    @exibitor_category = ExibitorCategory.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @exibitor_category }
    end
  end

  # GET /exibitor_categories/1/edit
  def edit
    @exibitor_category = ExibitorCategory.find(params[:id])
  end

  # POST /exibitor_categories
  # POST /exibitor_categories.json
  def create
    @exibitor_category = ExibitorCategory.new(params[:exibitor_category])

    respond_to do |format|
      if @exibitor_category.save
        format.html { redirect_to @exibitor_category, notice: 'Exibitor category was successfully created.' }
        format.json { render json: @exibitor_category, status: :created, location: @exibitor_category }
      else
        format.html { render action: "new" }
        format.json { render json: @exibitor_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /exibitor_categories/1
  # PUT /exibitor_categories/1.json
  def update
    @exibitor_category = ExibitorCategory.find(params[:id])

    respond_to do |format|
      if @exibitor_category.update_attributes(params[:exibitor_category])
        format.html { redirect_to @exibitor_category, notice: 'Exibitor category was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @exibitor_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /exibitor_categories/1
  # DELETE /exibitor_categories/1.json
  def destroy
    @exibitor_category = ExibitorCategory.find(params[:id])
    @exibitor_category.destroy

    respond_to do |format|
      format.html { redirect_to exibitor_categories_url }
      format.json { head :no_content }
    end
  end
end
