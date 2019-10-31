# frozen_string_literal: true
require "iruby"
require "chartkick"
require "iruby/chartkick/version"

module IRuby
  module Chartkick
    class BaseChart
      include ::Chartkick::Helper

      def js_prefix
        javascript_tags.join("\n")
      end

      def javascript_tags
        tags = [
          adapter_javascript_tag,
          chartkick_javascript_tag
        ]
      end

      def chartkick_dir
        @chartkick_dir ||= Gem::Specification.find_by_name("chartkick").gem_dir
      end

      def adapter_javascript_tag
        js = File.read("#{chartkick_dir}/vendor/assets/javascripts/Chart.bundle.js")
        %q{<script type="text/javascript">#{js}</script>}
      end

      def chartkick_javascript_tag
        js = File.read("#{chartkick_dir}/vendor/assets/javascripts/chartkick.js")
        %q{<script type="text/javascript">#{js}</script>}
      end

      def randomized_dom_id
        "#{self.class.to_s.downcase.gsub("::", "-")}-#{rand(100000)}"
      end
    end

    class LineChart < IRuby::Chartkick::BaseChart
      def initialize(data)
        @data = data
      end

      def plot
        ::IRuby.html(js_prefix + line_chart(@data, id: randomized_dom_id))
      end
    end

    class BarChart < IRuby::Chartkick::BaseChart
      def initialize(data)
        @data = data
      end

      def plot
        ::IRuby.html(js_prefix + bar_chart(@data, id: randomized_dom_id))
      end
    end

    def line_chart(data)
      LineChart.new(data).plot
    end

    def bar_chart(data)
      BarChart.new(data).plot
    end
  end
end
