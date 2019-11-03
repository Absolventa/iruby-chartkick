require "spec_helper"

RSpec.describe IRuby::Chartkick::GeoChart do
  let(:data) do
    {
      "Germany" => 1,
      "France" => 2,
      "Netherlands" => 10
    }
  end

  subject { described_class.new(data) }

  describe "#plot" do
    it "sends HTML to IRuby kernel" do
      expect(::IRuby).to receive(:html).with(any_args).at_least(1)
      subject.plot
    end

    it "knows how to construct custom randomized DOM id for chart canvas" do
      expect(subject.randomized_dom_id).to start_with("iruby-chartkick-geochart")
    end
  end
end
