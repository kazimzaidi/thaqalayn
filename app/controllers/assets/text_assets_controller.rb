class Assets::TextAssetsController < ApplicationController
  before_filter :require_user
  before_filter :load_section, :only => [:new, :create]
  before_filter :load_document, :only => [:new, :create]

  def new
    @text_asset = TextAsset.new
  end

  def create
    @text_asset = TextAsset.create!(:text => params[:text_asset][:text])
    @asset = @section.assets.create!(:item => @text_asset, :user => current_user)
    @section.assets.add_to_list_bottom(@asset)

    respond_to do |format|
      format.html { redirect_to document_path(@document) }
    end
  end

  private
  def load_section
    @section = current_user.sections.find(params[:section_id])
  end

  def load_document
    @document = current_user.documents.find(params[:document_id])
  end
end
