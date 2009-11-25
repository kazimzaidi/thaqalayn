# == Schema Information
#
# Table name: assets
#
#  id         :integer(4)      not null, primary key
#  user_id    :integer(4)      not null
#  item_id    :integer(4)      not null
#  item_type  :string(255)     not null
#  asset_view :string(255)
#  created_at :datetime
#  updated_at :datetime
#

require 'test_helper'

class AssetTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
  end
end
