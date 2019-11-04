# frozen_string_literal: true
module IRuby
  module Chartkick
    class ScatterChart < IRuby::Chartkick::BaseChart
      def plot(*args)
        ::IRuby.html(js_prefix + scatter_chart(@data, **ArgumentModifier[args, self]))
      end
    end
  end
end
