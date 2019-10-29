# frozen_string_literal: true
require "iruby"
require "chartkick"
require "iruby/chartkick/version"

module IRuby
  module Chartkick
    include ::Chartkick::Helper

    def self.init!
      tags = [
        adapter_javascript_tag,
        chartkick_javascript_tag
      ]
      IRuby.html(tags.join("\n"))
    end

    def self.included(base)
      init!
    end

    def adapter_javascript_tag
      %q{<script src="https://www.gstatic.com/charts/loader.js"/>}
    end

    def chartkick_javascript_tag
      %q{<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/chartkick/2.3.0/chartkick.min.js"/>}
    end

    def plot(data, type: :line)
      chart =
        case type
        when :line then line_chart(data)
        when :bar  then bar_chart(data)
        else line_chart(data)
        end

      ::IRuby.html(chart)
    end
  end
end
