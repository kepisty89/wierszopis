class CreditsController < ApplicationController

	def show
		@credits = Credit.all
		
	  respond_to do |format|
	    format.html # show.html.erb
  	  format.xml  { render :xml => @credits }
    end
	end

end
