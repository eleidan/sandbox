# frozen_string_literal: true

RSpec.describe Palindrome do
  it "has a version number" do
    expect(Palindrome::VERSION).not_to be nil
  end

  describe ".x" do
    it "does something useful" do
      expect(Palindrome.x).to eq(true)
    end
  end
end
