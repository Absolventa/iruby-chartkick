# frozen_string_literal: true
module IRuby
  module Chartkick
    class BarChart < IRuby::Chartkick::BaseChart
      def plot(*args)
        ::IRuby.html(js_prefix + bar_chart(@data, **ArgumentModifier[args, self]))
      end
    end
  end
end
