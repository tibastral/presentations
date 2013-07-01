class PresentationsController < ApplicationController
  helper_method :presentations, :old_presentations, :presentation, :sponsors

  def new
  end

  def create
    @presentation = Presentation.new(params[:presentation])
    @presentation.user = current_user if current_user
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

  def sponsors
    @sponsors ||= Sponsor
      .order{ created_at.desc }
  end

  def presentation
    @presentation ||= Presentation.new(current_user ? {name: current_user.name, email: current_user.email} : {})
  end
end
