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

        <<-JS
          <script name="iruby-chartkick-charting-engine-loaders" type="text/javascript">
            #{javascript}
          </script>
        JS
      end

      def javascript
        adapter_js_path = File.join(File.dirname(__FILE__), "..", "..", "..", "vendor", "assets", "javascripts", "bundle.js")
        File.read(adapter_js_path)
      end

      def randomized_dom_id
        "#{self.class.to_s.downcase.gsub("::", "-")}-#{rand(100000)}"
      end
    end
  end
end
