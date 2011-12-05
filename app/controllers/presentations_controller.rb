class PresentationsController < ApplicationController
  def new
    @presentation = Presentation.new
  end
end
