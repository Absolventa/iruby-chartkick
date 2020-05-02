# frozen_string_literal: true
require "iruby"
require "chartkick"
require "iruby/chartkick/version"
require "iruby/chartkick/base_chart"
require "iruby/chartkick/line_chart"
require "iruby/chartkick/bar_chart"
require "iruby/chartkick/column_chart"
require "iruby/chartkick/pie_chart"
require "iruby/chartkick/area_chart"
require "iruby/chartkick/scatter_chart"
require "iruby/chartkick/geo_chart"
require "iruby/chartkick/timeline"

module IRuby
  module Chartkick
    class << self
      def js_loaded?
        @@js_loaded
      end

      def mark_js_as_loaded
        @@js_loaded = true
      end

      def mark_js_as_unloaded
        @@js_loaded = false
      end
    end

    mark_js_as_unloaded

    def line_chart(data, **args)
      LineChart.new(data).plot(**args)
    end

    def bar_chart(data, **args)
      BarChart.new(data).plot(**args)
    end

    def column_chart(data, **args)
      ColumnChart.new(data).plot(**args)
    end

    def pie_chart(data, **args)
      PieChart.new(data).plot(**args)
    end

    def area_chart(data, **args)
      AreaChart.new(data).plot(**args)
    end

    def scatter_chart(data, **args)
      ScatterChart.new(data).plot(**args)
    end

    def geo_chart(data, **args)
      GeoChart.new(data).plot(**args)
    end

    def timeline(data, **args)
      Timeline.new(data).plot(**args)
    end
  end
end
