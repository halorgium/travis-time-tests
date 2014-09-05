require 'timecop'
require 'active_support/all'

ENV["TZ"] = "UTC"
Time.zone = "UTC"

describe "Time" do
  around(:each) do |spec|
    Timecop.freeze do
      spec.run
    end
  end

  it "matches" do
    expect(Time.now).to eq(Time.now)
    expect(Time.zone.now).to eq(Time.now)
  end
end
