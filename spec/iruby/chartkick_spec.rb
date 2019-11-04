RSpec.describe IRuby::Chartkick do
  it "has a version number" do
    expect(IRuby::Chartkick::VERSION).not_to be nil
  end

  class TestNotebook
    include IRuby::Chartkick
  end

  describe "module inclusion" do
    let(:notebook) { TestNotebook.new }
    let(:data) { { 1 => 1, 2 => 2 } }

    describe "#line_chart" do
      let(:chart) { IRuby::Chartkick::LineChart.new(data) }

      it "supports keyword arguments" do
        expect(IRuby::Chartkick::LineChart).to receive(:new).and_return(chart)
        expect(chart).to receive(:plot).with(hash_including(a: 1, b: 2))
        notebook.line_chart(data, a: 1, b: 2)
      end
    end

    describe "#bar_chart" do
      let(:chart) { IRuby::Chartkick::BarChart.new(data) }

      it "supports keyword arguments" do
        expect(IRuby::Chartkick::BarChart).to receive(:new).and_return(chart)
        expect(chart).to receive(:plot).with(hash_including(a: 1, b: 2))
        notebook.bar_chart(data, a: 1, b: 2)
      end
    end

    describe "#column_chart" do
      let(:chart) { IRuby::Chartkick::ColumnChart.new(data) }

      it "supports keyword arguments" do
        expect(IRuby::Chartkick::ColumnChart).to receive(:new).and_return(chart)
        expect(chart).to receive(:plot).with(hash_including(a: 1, b: 2))
        notebook.column_chart(data, a: 1, b: 2)
      end
    end

    describe "#area_chart" do
      let(:chart) { IRuby::Chartkick::AreaChart.new(data) }

      it "supports keyword arguments" do
        expect(IRuby::Chartkick::AreaChart).to receive(:new).and_return(chart)
        expect(chart).to receive(:plot).with(hash_including(a: 1, b: 2))
        notebook.area_chart(data, a: 1, b: 2)
      end
    end

    describe "#scatter_chart" do
      let(:chart) { IRuby::Chartkick::ScatterChart.new(data) }

      it "supports keyword arguments" do
        expect(IRuby::Chartkick::ScatterChart).to receive(:new).and_return(chart)
        expect(chart).to receive(:plot).with(hash_including(a: 1, b: 2))
        notebook.scatter_chart(data, a: 1, b: 2)
      end
    end

    describe "#geo_chart" do
      let(:chart) { IRuby::Chartkick::GeoChart.new(data) }

      it "supports keyword arguments" do
        expect(IRuby::Chartkick::GeoChart).to receive(:new).and_return(chart)
        expect(chart).to receive(:plot).with(hash_including(a: 1, b: 2))
        notebook.geo_chart(data, a: 1, b: 2)
      end
    end

    describe "#timeline" do
      let(:chart) { IRuby::Chartkick::Timeline.new(data) }

      it "supports keyword arguments" do
        expect(IRuby::Chartkick::Timeline).to receive(:new).and_return(chart)
        expect(chart).to receive(:plot).with(hash_including(a: 1, b: 2))
        notebook.timeline(data, a: 1, b: 2)
      end
    end
  end

end
