class PresentationsController < ApplicationController
  helper_method :presentations, :old_presentations, :presentation

  def new
  end

  def create
    @presentation = Presentation.new(params[:presentation])

    if @presentation.save
      redirect_to [:new, :presentation], :notice => 'Merci beaucoup pour cette proposition !'
    else
      render :action => :new
    end
  end

  def show
    @presentation = Presentation.find(params[:id])
  end

  private
  def old_presentations
    @old_presentations ||= Presentation
      .where{ occured_at != nil }
      .order{ occured_at.desc }
  end

  def presentations
    @presentations ||= Presentation
      .where{ occured_at == nil }
      .order{ created_at.desc }
  end

  def presentation
    @presentation ||= Presentation.new
  end
end
