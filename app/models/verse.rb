class Verse < ActiveRecord::Base

  # Verse[5,55], Verse[33,33]
  def self.[](chapter_id, ayah_index)
    find(:first, :conditions => { :chapter_id => chapter_id, :ayah_index => ayah_index })
  end
end
