module Remotipart
  module ViewHelper
    def remotipart_response(options = {}, &block)
      content = with_output_buffer(&block)
      response.content_type = Mime::HTML
      text_area_tag('remotipart_response', String.new(content), options)
    end
  end
end
