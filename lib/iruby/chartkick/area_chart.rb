# frozen_string_literal: true
module IRuby
  module Chartkick
    class AreaChart < IRuby::Chartkick::BaseChart
      def plot(*args)
        ::IRuby.html(js_prefix + area_chart(@data, **ArgumentModifier[args, self]))
      end
    end
  end
end
