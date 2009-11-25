# == Schema Information
#
# Table name: text_assets
#
#  id         :integer(4)      not null, primary key
#  text       :text
#  created_at :datetime
#  updated_at :datetime
#

class TextAsset < ActiveRecord::Base
  has_one :asset, :as => :item
end
