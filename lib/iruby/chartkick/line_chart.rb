# frozen_string_literal: true
module IRuby
  module Chartkick
    class LineChart < IRuby::Chartkick::BaseChart
      def plot(*args)
        ::IRuby.html(js_prefix + line_chart(@data, **ArgumentModifier[args, self]))
      end
    end
  end
end
