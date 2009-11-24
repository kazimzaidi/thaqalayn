require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe SectionsController do

  #Delete these examples and add some real ones
  it "should use SectionsController" do
    controller.should be_an_instance_of(SectionsController)
  end


  describe "GET 'new'" do
    it "should be successful" do
      get 'new'
      response.should be_success
    end
  end

  describe "GET 'create'" do
    it "should be successful" do
      get 'create'
      response.should be_success
    end
  end
end
