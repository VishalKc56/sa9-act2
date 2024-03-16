require "spec_helper"
require_relative "../lib/problem2"

RSpec.describe TodoList do
    describe "#add" do
      it "adds a todo to the list" do
        list = TodoList.new
        list.add("Buy milk")
        expect(list.todos).to include("Buy milk")
      end
    end
  
    describe "#remove" do
      it "removes a todo from the list" do
        list = TodoList.new
        list.add("Buy milk")
        list.remove("Buy milk")
        expect(list.todos).not_to include("Buy milk")
      end
    end
  
    describe "#todos" do
      it "returns all todos" do
        list = TodoList.new
        list.add("Buy milk")
        list.add("Buy bread")
        expect(list.todos).to match_array(["Buy milk", "Buy bread"])
      end
    end
end