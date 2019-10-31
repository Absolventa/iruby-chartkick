# frozen_string_literal: true
require "iruby"
require "chartkick"
require "iruby/chartkick/version"
require "iruby/chartkick/base_chart"
require "iruby/chartkick/line_chart"
require "iruby/chartkick/bar_chart"
require "iruby/chartkick/pie_chart"

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
  end
end
