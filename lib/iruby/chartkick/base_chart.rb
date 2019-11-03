﻿# frozen_string_literal: true
module IRuby
  module Chartkick
    class BaseChart
      include ::Chartkick::Helper

      def initialize(data)
        @data = data
      end

      def js_prefix
        javascripts.map do |js|
          <<-JS
            <script type="text/javascript">
              #{js}
            </script>
          JS
        end.join("\n")
      end

      def javascripts
        [
          adapter_javascript,
          chartkick_javascript
        ]
      end

      def adapter_javascript
        adapter_js_path = File.join(File.dirname(__FILE__), "..", "..", "..", "vendor", "assets", "javascripts", "google_charts_loader.js")
        File.read(adapter_js_path)
      end

      def chartkick_javascript
        chartkick_js_path = File.join(File.dirname(__FILE__), "..", "..", "..", "vendor", "assets", "javascripts", "chartkick.js")
        File.read(chartkick_js_path)
      end

      def randomized_dom_id
        "#{self.class.to_s.downcase.gsub("::", "-")}-#{rand(100000)}"
      end
    end
  end
end
