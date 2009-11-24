class SectionsController < ApplicationController
  before_filter :require_user
  before_filter :load_section, :only => [:show, :edit, :update, :destroy]

  def new
  end

  def create
  end

  private
  def load_section
    @section = current_user.sections.find(params[:id])
  end
end
