# frozen_string_literal: true
module IRuby
  module Chartkick
    class PieChart < IRuby::Chartkick::BaseChart
      def plot(*args)
        ::IRuby.html(js_prefix + pie_chart(@data, **ArgumentModifier[args, self]))
      end
    end
  end
end
