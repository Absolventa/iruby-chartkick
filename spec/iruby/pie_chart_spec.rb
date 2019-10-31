require "spec_helper"

RSpec.describe IRuby::Chartkick::PieChart do
  let(:data) do
    {
      2010 => 1,
      2011 => 2,
      2013 => 10
    }
  end

  subject { described_class.new(data) }

  describe "#plot" do
    it "sends HTML to IRuby kernel" do
      expect(::IRuby).to receive(:html).with(any_args).at_least(1)
      subject.plot
    end

    it "knows how to construct custom randomized DOM id for chart canvas" do
      expect(subject.randomized_dom_id).to start_with("iruby-chartkick-piechart")
    end
  end
end
