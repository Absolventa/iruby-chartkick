# frozen_string_literal: true
module IRuby
  module Chartkick
    class Timeline < IRuby::Chartkick::BaseChart
      def plot
        ::IRuby.html(js_prefix + timeline(@data, id: randomized_dom_id))
      end
    end
  end
end
