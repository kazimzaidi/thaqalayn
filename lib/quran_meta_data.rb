module MetaMapping
  class QuranMetaData
    include XML::Mapping

    array_node :suras, "suras", "sura", :class => Sura
  end
end
