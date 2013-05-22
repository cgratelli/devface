class HomeController < ApplicationController

	def index
		@ishome = 'active'
		respond_to do |format|
			format.html
		end
	end

end