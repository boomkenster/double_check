class ReplacesController < ApplicationController
  # GET /replaces
  # GET /replaces.json
  def index
    @items = Item.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @replaces }
    end
  end

  # GET /replaces/1
  # GET /replaces/1.json
  def show
    @replace = Replace.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @replace }
    end
  end

  # GET /replaces/new
  # GET /replaces/new.json
  def new
    @replace = Replace.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @replace }
    end
  end

  # GET /replaces/1/edit
  def edit
    @replace = Replace.find(params[:id])
  end

  # POST /replaces
  # POST /replaces.json
  def create
    @replace = Replace.new(params[:replace])

    respond_to do |format|
      if @replace.save
        format.html { redirect_to @replace, notice: 'Replace was successfully created.' }
        format.json { render json: @replace, status: :created, location: @replace }
      else
        format.html { render action: "new" }
        format.json { render json: @replace.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /replaces/1
  # PUT /replaces/1.json
  def update
    @replace = Replace.find(params[:id])

    respond_to do |format|
      if @replace.update_attributes(params[:replace])
        format.html { redirect_to @replace, notice: 'Replace was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @replace.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /replaces/1
  # DELETE /replaces/1.json
  def destroy
    @replace = Replace.find(params[:id])
    @replace.destroy

    respond_to do |format|
      format.html { redirect_to replaces_url }
      format.json { head :no_content }
    end
  end
end
