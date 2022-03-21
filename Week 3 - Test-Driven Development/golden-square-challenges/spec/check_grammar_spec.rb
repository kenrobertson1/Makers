require 'check_grammar'

RSpec.describe "check_grammar method" do
  context "Given an empty string" do
    it "fails" do
      expect { check_grammar("") }.to raise_error "Not a sentence!"
    end
  end

  context "Given a sentence starting with a capital letter and ending in a full stop" do
    it "returns true" do
      result = check_grammar("Nice weather.")
      expect(result).to eq true
    end
  end

  context "Given a sentence starting with a capital letter and ending in a full stop" do
    it "returns true" do
      result = check_grammar("Nice weather.")
      expect(result).to eq true
    end
  end

  context "Given a sentence starting with a lowercase letter and ending with a letter" do
    it "returns false" do
      result = check_grammar("nice weather")
      expect(result).to eq false
    end
  end

  context "Given a sentence starting with a capital letter and ending in a question mark" do
    it "returns true" do
      result = check_grammar("Nice weather?")
      expect(result).to eq true
    end
  end

  context "Given a sentence starting with a lowercase letter and ending in a full stop" do
    it "returns false" do
      result = check_grammar("nice weather.")
      expect(result).to eq false
    end
  end

  context "Given a sentence starting with a capital letter and ending in a exclamation mark" do
    it "returns true" do
      result = check_grammar("Nice weather!")
      expect(result).to eq true
    end
  end

  context "Given a sentence in all capital letters and ending in a full stop" do
    it "returns true" do
      result = check_grammar("NICE WEATHER.")
      expect(result).to eq true
    end
  end

end
