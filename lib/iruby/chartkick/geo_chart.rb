# frozen_string_literal: true
module IRuby
  module Chartkick
    class GeoChart < IRuby::Chartkick::BaseChart
      def plot
        ::IRuby.html(js_prefix + geo_chart(@data, id: randomized_dom_id))
      end
    end
  end
end
