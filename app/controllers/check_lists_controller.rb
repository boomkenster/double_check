class CheckListsController < ApplicationController
	def index
	@checklists = CheckList.all
	end

	def show
	@checklist = CheckList.find(params[:id])
	end

	def new
	@checklist = CheckList.new
	end

	def edit
	@checklist = CheckList.find(params[:id])

	end

	def create
	@checklist = CheckList.new(params[:check_list])
	@checklist.user_id = current_user.id if current_user != nil
	respond_to do |format|
      if @checklist.save
        format.html { redirect_to @checklist, notice: 'Checklist was successfully created.' }
        format.json { render json: @checklist, status: :created, location: @checklist }
      else
        format.html { render action: "new" }
        format.json { render json: @checklist.errors, status: :unprocessable_entity }
      end
    end	

	end

	def update
	@checklist = CheckList.find(params[:id])

	 respond_to do |format|
      if @checklist.update_attributes(params[:check_list])
        @checklist.save
        format.html { redirect_to @checklist, notice: 'Checklist was successfully updated.' }
        format.json { head :no_content }

      else
        format.html { render action: "edit" }
        format.json { render json: @checklist.errors, status: :unprocessable_entity }
      end
  	 end

	end

	def destroy
	@checklist = CheckList.find(params[:id])
    @checklist.destroy

     respond_to do |format|
      format.html { redirect_to check_lists_url }
      format.json { head :no_content }
    end

	end
end
