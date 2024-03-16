require "spec_helper"
require_relative "../lib/problem3"

RSpec.describe StringWrapper do
    describe "#reverse" do
      it "reverses the string" do
        wrapper = StringWrapper.new("hello")
        expect(wrapper.reverse).to eq("olleh")
      end
    end
  
    describe "#upcase" do
      it "converts the string to uppercase" do
        wrapper = StringWrapper.new("hello")
        expect(wrapper.upcase).to eq("HELLO")
      end
    end
  
    describe "#downcase" do
      it "converts the string to lowercase" do
        wrapper = StringWrapper.new("HELLO")
        expect(wrapper.downcase).to eq("hello")
      end
    end
  end
  