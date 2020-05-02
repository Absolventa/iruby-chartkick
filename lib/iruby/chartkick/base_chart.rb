# frozen_string_literal: true
module IRuby
  module Chartkick
    class BaseChart
      include ::Chartkick::Helper

      ArgumentModifier = ->(args, callee) do
        modified = args.inject({}) do |sum, item|
          item.each do |k, v|
            sum[k] = v
          end
          sum
        end
        modified[:id] = callee.randomized_dom_id
        modified
      end

      def initialize(data)
        @data = data
      end

      def js_prefix
        return "" if IRuby::Chartkick.js_loaded?
        IRuby::Chartkick.mark_js_as_loaded

        javascripts.map do |js|
          <<-JS
            <script name="iruby-chartkick-charting-engine-loaders" type="text/javascript">
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
