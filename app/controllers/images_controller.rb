class ImagesController < ApplicationController
	before_action :set_image, only: [:edit, :update, :destroy, :show]
	def edit
	end
	def update
		@image.update image_params
		redirect_to @image
	end
	def index
		@images = Image.all
	end

	def new
		@image =Image.new
	end

	def create
		#render plain: params[:image].inspect
		@image = Image.new image_params
		@image.save
		redirect_to @image
	end
	def destroy
		@image.destroy
		redirect_to images_path
	end

	def shows
	end
	def set_image
		@image =Image.find params[:id]
	end	

	private

	def image_params
		params.require(:image).permit(:description)
	end
end
