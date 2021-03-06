class ItemsController < ApplicationController

	def index
	@items = Item.all
	end

	def show
	@item = Item.find(params[:id])

	end

	def new
	@item = Item.new

	end

	def edit
	@item = Item.find(params[:id])

	end

	def create
	@item = Item.new(params[:item])

	respond_to do |format|
      if @item.save
        format.html { redirect_to @item, notice: 'Item(s) was successfully created.' }
        format.json { render json: @item, status: :created, location: @item }
      else
        format.html { render action: "new" }
        format.json { render json: @item.errors, status: :unprocessable_entity }
      end
    end	

	end

	def update
	@item = Item.find(params[:id])

	 respond_to do |format|
      if @Item.update_attributes(params[:Item])
        format.html { redirect_to @Item, notice: 'Item(s) was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @Item.errors, status: :unprocessable_entity }
      end
    end

	end

	def destory
	@item = Item.find(params[:id])
    @item.destroy

     respond_to do |format|
      format.html { redirect_to items_url }
      format.json { head :no_content }
    end

	end

end
