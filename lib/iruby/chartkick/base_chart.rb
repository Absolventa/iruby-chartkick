# frozen_string_literal: true
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
  end
end
