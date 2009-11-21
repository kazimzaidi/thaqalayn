class Verse < ActiveRecord::Base
  
  named_scope :randomly, :order => 'rand()', :limit => 1

  def self.random
    randomly.first
  end

  def self.opening
    first
  end
  # Verse[5,55], Verse[33,33]
  def self.[](chapter_id, ayah_index)
    find(:first, :conditions => { :chapter_id => chapter_id, :ayah_index => ayah_index })
  end
end
