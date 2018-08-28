require 'nokogiri'
require_relative 'main'

class IndexController < Main::Api
  def call(req)
      res = {
          status: 200,
          msg: 'Welcome!'
      }

      res_json status: 200, res: res
  end
end

class TeamsController < Main::Api
    def call(req)
        document = Nokogiri::HTML(open('statics/teams.html'))
        res_html status: 200, res: document.to_html
    end
end