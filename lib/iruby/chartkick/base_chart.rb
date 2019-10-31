# frozen_string_literal: true
module IRuby
  module Chartkick
    class BaseChart
      include ::Chartkick::Helper

      def initialize(data)
        @data = data
      end

      def js_prefix
        <<-JS
          <script type="text/javascript">
            #{adapter_javascript}
          </script>
          <script type="text/javascript">
            #{chartkick_javascript}
          </script>
        JS
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
