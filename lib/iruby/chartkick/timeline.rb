# frozen_string_literal: true
module IRuby
  module Chartkick
    class Timeline < IRuby::Chartkick::BaseChart
      def plot(*args)
        ::IRuby.html(js_prefix + timeline(@data, **ArgumentModifier[args, self]))
      end
    end
  end
end
