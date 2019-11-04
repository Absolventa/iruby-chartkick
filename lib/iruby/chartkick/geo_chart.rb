# frozen_string_literal: true
module IRuby
  module Chartkick
    class GeoChart < IRuby::Chartkick::BaseChart
      def plot(*args)
        ::IRuby.html(js_prefix + geo_chart(@data, **ArgumentModifier[args, self]))
      end
    end
  end
end
