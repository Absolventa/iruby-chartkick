# frozen_string_literal: true
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
  end
end
