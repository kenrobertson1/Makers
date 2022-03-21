require 'task_checker'

RSpec.describe "task_checker method" do
  context "given just @TODO" do
    it "returns true" do
      result = task_checker("@TODO")
      expect(result).to eq true
    end
  end
  
  context "given just a task and includes @TODO" do
    it "returns true" do
      result = task_checker("buy milk @TODO")
      expect(result).to eq true
    end
  end

  context "@TODO not included" do
    it "returns false" do
      result = task_checker("buy milk")
      expect(result).to eq false
    end
  end

  context "@todo written in lower case" do
    it "returns false" do
      result = task_checker("Buy milk @todo")
      expect(result).to eq false
    end
  end
  
end