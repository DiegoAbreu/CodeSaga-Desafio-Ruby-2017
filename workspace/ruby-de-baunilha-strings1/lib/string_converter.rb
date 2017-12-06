class StringConverter
  def self.convert_to_iso8859_1(phrase)
    phrase.gsub! "ã", "&atilde;"
    phrase.gsub! "â", "&acirc;"
    phrase.gsub! "é", "&eacute;"
    phrase.gsub! "ó", "&oacute;"
    phrase.gsub! "ç", "&ccedil;"
    phrase
  end

  def self.convert_to_human(phrase)
    phrase.gsub! "&atilde;", "ã"
    phrase.gsub! "&acirc;", "â"
    phrase.gsub! "&eacute;", "é"
    phrase.gsub! "&ecirc;", "ê"
    phrase.gsub! "&oacute;", "ó"
    phrase.gsub! "&ccedil;", "ç"
    phrase.gsub! "&amp;", "&"
    phrase
  end
end
