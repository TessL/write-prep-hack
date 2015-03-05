class EssaysController < ApplicationController
	def index
		@essays = Essay.all
	end

	def show
		#render plain: params[:essay].inspect
		@essay = Essay.find(params[:id])
	end

	def new
		@essay = Essay.new
	end

	def create
		@essay = Essay.new(essay_params)

		if @essay.save
			redirect_to@essay
		else
			render 'new'
		end
	end

	private 
		def essay_params
			params.require(:essay).permit(:title, :text)
		end
end

