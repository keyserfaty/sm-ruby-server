require 'json'

class Main 
  class Api
    def res_json(status:, content_type: { 'Content-Type' => 'json' }, res:)
      [status, content_type, [res.to_json]]
    end

    def res_html(status:, content_type: { 'Content-Type' => 'text/html' }, res:)
      [status, content_type, [res]]
    end
  end
end