require "rspec"
require "wordplay"

describe Wordplay do
  describe "#ordered_letters?" do
    it "returns true for words with ordered letters" do
      %w(a ab bijoux fox nosy tux).each do |word|
        expect(described_class.new(word).ordered_letters?).to eq(true)
      end
    end

    it "returns false for words without ordered letters" do
      %w(bad car foxhole zigzag).each do |word|
        expect(described_class.new(word).ordered_letters?).to eq(false)
      end
    end
  end

  describe "#reverse_ordered_letters?" do
    it "returns true for words with reverse ordered letters" do
      %w(a fed solid toffee).each do |word|
        expect(described_class.new(word).reverse_ordered_letters?).to eq(true)
      end
    end

    it "returns false for words without reverse ordered letters" do
      %w(bad car foxhole zigzag).each do |word|
        expect(described_class.new(word).ordered_letters?).to eq(false)
      end
    end
  end

  describe "#ordered_letters" do
    it "sorts the letters" do
      expect(described_class.new("complicated").ordered_letters)
        .to eq("accdeilmopt")
    end
  end

  describe "#reverse_ordered_letters" do
    it "sorts the letters in reverse" do
      expect(described_class.new("complicated").reverse_ordered_letters)
        .to eq("tpomliedcca")
    end
  end
end
