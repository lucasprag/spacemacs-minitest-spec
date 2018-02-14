require 'spec_helper'

describe Array do
  it "can be created with no arguments" do
    expect(Array.new.class).to eq(Array)
  end

  it "can be created with a specific size" do
    expect(Array.new(10).size).to eq(10)
  end
end
