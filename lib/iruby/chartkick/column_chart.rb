# frozen_string_literal: true
module IRuby
  module Chartkick
    class ColumnChart < IRuby::Chartkick::BaseChart
      def plot(*args)
        ::IRuby.html(js_prefix + column_chart(@data, **ArgumentModifier[args, self]))
      end
    end
  end
end
