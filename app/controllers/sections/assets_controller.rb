class Sections::AssetsController < ApplicationController
  before_filter :require_user, :load_section

  def new
    @asset = Asset.new
  end

  private
  def load_section
    @section = current_user.sections.find(params[:section_id])
  end


end
