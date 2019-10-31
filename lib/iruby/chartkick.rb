# frozen_string_literal: true
require "iruby"
require "chartkick"
require "iruby/chartkick/version"
require "iruby/chartkick/base_chart"
require "iruby/chartkick/line_chart"
require "iruby/chartkick/bar_chart"

module IRuby
  module Chartkick
    class BarChart < IRuby::Chartkick::BaseChart
      def initialize(data)
        @data = data
      end

      def plot
        ::IRuby.html(js_prefix + bar_chart(@data, id: randomized_dom_id))
      end
    end

    def line_chart(data)
      LineChart.new(data).plot
    end

    def bar_chart(data)
      BarChart.new(data).plot
    end
  end
end
