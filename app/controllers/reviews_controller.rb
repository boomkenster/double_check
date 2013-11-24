class ReviewsController < ApplicationController

	def index
	@reviews = Review.all
	end

	def show
	@review = Review.find(params[:id])

	end

	def new
	@review = Review.new

	end

	def edit
	@review = Review.find(params[:id])

	end

	def create
	@review = Review.new(params[:review])

	respond_to do |format|
      if @review.save
        format.html { redirect_to @review, notice: 'Review was successfully created.' }
        format.json { render json: @review, status: :created, location: @review }
      else
        format.html { render action: "new" }
        format.json { render json: @review.errors, status: :unprocessable_entity }
      end
    end	

	end

	def update
	@review = Review.find(params[:id])

	 respond_to do |format|
      if @review.update_attributes(params[:review])
        format.html { redirect_to @review, notice: 'Review was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @review.errors, status: :unprocessable_entity }
      end
    end

	end

	def destory
	@review = Review.find(params[:id])
    @review.destroy

     respond_to do |format|
      format.html { redirect_to reviews_url }
      format.json { head :no_content }
    end
	end

end
