class Documents::SectionsController < ApplicationController
  before_filter :require_user, :load_document

  def new
    @section = Section.new
  end

  def create
    begin
      Document.transaction do
	@section = @document.sections.create!(params[:section].merge(:user => current_user))
	@document.sections.add_to_list_top(@section)
      end
    rescue 
      respond_to do |format|
	format.html { render :action => "new" }
	format.xml  { render :xml => @section.errors, :status => :unprocessable_entity }
      end
    else
      respond_to do |format|
	flash[:notice] = 'Section was successfully added.'
	format.html { redirect_to(@document) }
	format.xml  { render :xml => @section, :status => :created, :location => @section }
      end
    end
  end

  def edit
  end

  def update
  end

  def show
  end

  def index
  end

  def destroy
  end

  private
  def load_document
    @document = current_user.documents.find(params[:document_id])
  end

end
