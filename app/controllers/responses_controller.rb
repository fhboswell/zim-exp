class ResponsesController < ApplicationController

  def index
  end

   def new
    @response = Response.new
  end

  

  # POST /responses
  # POST /responses.json
 
  def create
    @response = Response.new(response_params)
    
    if @response.save
        flash[:success] = 'Response sucessfully recorded.'
      	redirect_to done_index_url
    else
        
        flash[:danger] = 'There was a problem. Please fill out all fields.'
        render :index
        
  
   end
 end

  private
    # Use callbacks to share common setup or constraints between actions.
   

    # Never trust parameters from the scary internet, only allow the white list through.
    def response_params
      params.require(:response).permit(:r1x1, :r1x2, :r1x3, :r2x1, :r2x2, :r2x3, :r3x1, :r3x2, :r3x3, :r4x1, :r4x2, :r4x3, :r5x1, :r5x2, :r5x3, :r6x1, :r6x2, :r6x3, :r7x1, :r7x2, :r7x3, :r8x1, :r8x2, :r8x3, :r9x1, :r9x2, :r9x3, :r10x1, :r10x2, :r10x3 , :r11x1, :r11x2, :r11x3, :r12x1, :r12x2, :r12x3 , :r13x1, :r13x2, :r13x3 , :r14x1, :r14x2, :r14x3 , :r15x1, :r15x2, :r15x3 , :r16x1, :r16x2, :r16x3 , :r17x1, :r17x2, :r17x3 , :r18x1, :r18x2, :r18x3 , :r19x1, :r19x2, :r19x3 , :r20x1, :r20x2, :r20x3)
    end
end
