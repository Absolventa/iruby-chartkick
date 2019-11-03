# frozen_string_literal: true
module IRuby
  module Chartkick
    class ColumnChart < IRuby::Chartkick::BaseChart
      def plot
        ::IRuby.html(js_prefix + column_chart(@data, id: randomized_dom_id))
      end
    end
  end
end
