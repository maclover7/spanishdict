require "spanishdict"

module SpanishDict
  include HTTParty
  include Nokogiri

  def self.translate_to_en(passage)
    transformed_passage = passage.gsub(/\s+/, "%20")
    response = HTTParty.get("http://translate1.spanishdict.com/dictionary/translation_prompt?lang_from=es&trtext=#{transformed_passage}")
    response.parsed_response["results"]
  end

  def self.translate_to_es(passage)
    transformed_passage = passage.gsub(/\s+/, "%20")
    response = HTTParty.get("http://translate1.spanishdict.com/dictionary/translation_prompt?lang_from=en&trtext=#{transformed_passage}")
    response.parsed_response["results"]
  end
end
