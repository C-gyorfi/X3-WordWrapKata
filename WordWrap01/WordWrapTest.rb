require "rspec/autorun"
require_relative './WordWrap'

describe "the wrap function" do
  it "returns empty string when called with nothing" do
    expect(wrap("", 1)).to eq("")
  end

  it "returns the word if shorter than the length" do
    expect(wrap("word", 5)).to eq("word")
  end

  it "splits 2 words on the space" do
    expect(wrap("word word", 5)).to eq("word\nword")
  end

  it "splits whitespace that is after the max length" do
    expect(wrap("word word", 4)).to eq("word\nword")
  end

  it "splits longwords on max length" do
    expect(wrap("longword", 4)).to eq("long\nword")
  end

  it "splits 3 words on the space" do
    expect(wrap("word word word", 5)).to eq("word\nword\nword")
  end

  it "keeps as many words on a line as possible" do
    expect(wrap("word word word", 10)).to eq("word word\nword")
  end

  it "splits long text with mixed lenght of words" do
    expect(wrap("a lot of words for a single line", 10)).to eq("a lot of\nwords for\na single\nline")
  end

end
