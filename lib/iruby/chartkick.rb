# frozen_string_literal: true
require "iruby"
require "chartkick"
require "iruby/chartkick/version"
require "iruby/chartkick/base_chart"
require "iruby/chartkick/line_chart"
require "iruby/chartkick/bar_chart"
require "iruby/chartkick/pie_chart"
require "iruby/chartkick/area_chart"
require "iruby/chartkick/scatter_chart"
require "iruby/chartkick/geo_chart"
require "iruby/chartkick/timeline"

module IRuby
  module Chartkick
    def line_chart(data)
      LineChart.new(data).plot
    end

    def bar_chart(data)
      BarChart.new(data).plot
    end

    def pie_chart(data)
      PieChart.new(data).plot
    end

    def area_chart(data)
      AreaChart.new(data).plot
    end

    def scatter_chart(data)
      ScatterChart.new(data).plot
    end

    def geo_chart(data)
      GeoChart.new(data).plot
    end

    def timeline(data)
      Timeline.new(data).plot
    end
  end
end
