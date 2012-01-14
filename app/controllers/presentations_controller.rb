class PresentationsController < ApplicationController
  def new
    @old_presentations = Presentation.where{occured_at != nil}.order{occured_at.desc}
    @presentations = Presentation.where{occured_at == nil}.order{occured_at.desc}
    @presentation = Presentation.new
  end

  def create
    @presentation = Presentation.new(params[:presentation])
    if @presentation.save
      redirect_to [:new, :presentation], :notice => 'merci beaucoup pour cette proposition !'
    else
      render :action => :new
    end
  end
end
