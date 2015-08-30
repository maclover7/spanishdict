require 'spec_helper'

describe SpanishDict do
  it 'translates from EN --> ES' do
    expect(
      SpanishDict.translate_to_es("hi")
    ).to eq("hola")
  end

  it 'translates from ES --> EN' do
    expect(
      SpanishDict.translate_to_en("hola")
    ).to eq("hello")
  end
end

