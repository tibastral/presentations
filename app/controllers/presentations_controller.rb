class PresentationsController < ApplicationController
  def new
    @presentation = Presentation.new
  end

  def create
    @presentation = Presentation.new
    if @presentation.save
      redirect_to [:new, :presentation], :notice => 'merci beaucoup pour cette proposition !'
    else
      render :action => :new
    end
  end
end
