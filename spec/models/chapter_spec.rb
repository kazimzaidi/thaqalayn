# == Schema Information
#
# Table name: chapters
#
#  id           :integer(4)      not null, primary key
#  index        :integer(4)
#  arabic_name  :string(255)
#  verse_count  :integer(4)
#  start        :integer(4)
#  trans_name   :string(255)
#  english_name :string(255)
#  revealed_in  :string(255)
#  order        :integer(4)
#  rukus        :integer(4)
#  created_at   :datetime
#  updated_at   :datetime
#

require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe Chapter do
  before(:each) do
    @valid_attributes = {
      :index => 1,
      :arabic_name => "value for arabic_name",
      :verse_count => 1,
      :start => 1,
      :trans_name => "value for trans_name",
      :english_name => "value for english_name",
      :revealed_in => "value for revealed_in",
      :order => 1,
      :rukus => 1
    }
  end

  it "should create a new instance given valid attributes" do
    Chapter.create!(@valid_attributes)
  end
end
