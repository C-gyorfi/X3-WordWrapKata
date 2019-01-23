require "rspec/autorun"
require_relative './WordWrap'

describe "the wrap function" do
  it "returns empty string when called with nothing" do
    expect(wrap("", 1)).to eq("")
  end

  it "returns the word if shorter the max length " do
    expect(wrap("at a", 4)).to eq("at a")
  end

  it "returns a longword split into half at max lenght" do
    expect(wrap("longword", 4)).to eq("long\nword")
  end

  it "splits long words on space" do
    expect(wrap("long word", 5)).to eq("long\nword")
  end

  it "splits 3 words at at max_len" do
    expect(wrap("longlongword", 4)).to eq("long\nlong\nword")
  end

  it "splits 3 words at at space" do
    expect(wrap("a longword", 4)).to eq("a\nlong\nword")
  end

  it "splits words at last space" do
    expect(wrap("a a longword", 4)).to eq("a a\nlong\nword")
  end

  it "splits long text with mixed lenght of words" do
    expect(wrap("a lot of words for a single line", 10)).to eq("a lot of\nwords for\na single\nline")
  end
end
