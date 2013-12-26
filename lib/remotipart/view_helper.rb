module Remotipart
  module ViewHelper
    def remotipart_response(options = {}, &block)
      content = with_output_buffer(&block)
      if remotipart_submitted?
        response.content_type = Mime::HTML
        text_area_tag('remotipart_response', String.new(html_escape(content)), options)
      else
        content
      end
    end
  end
end
