class InstructController < ApplicationController
  def index

  end
  def test
  	
  	if params[:r1].to_i  > 60 and params[:r2].to_i  > 60 and params[:r3].to_i  > 60
  		puts "above"
  		redirect_to responses_url
  		
  	else
  		puts "below"
  		render inline: "location.reload();" 
  		flash[:danger] = 'These answers dont make sense try again.'
  	end
  end
end
