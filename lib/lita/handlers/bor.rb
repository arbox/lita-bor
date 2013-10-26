require 'lita'
require 'net/http'
require 'cgi'

module Lita
  module Handlers
    class Bor < Handler
      route(/^bor/, :bor)
      
      # Some implementation based on Rebular Expressions.
      # TODO: use Nokogiri or an other HTML parser.
      def bor(response)
        str = Net::HTTP.get(URI('http://bash.im/forweb/?u'))
        str = str.gsub(/'\s+\+\s+'/, '')
        str = str.match(/<div id="b_q_t" [^>]+>(.+?)<\/div>/)[1]
        str = str.gsub(/<br[^>]*>/, "\n")
        str = CGI.unescapeHTML(str)
        str = "#{str}\n"
        response.reply(str)
      end
    end

    Lita.register_handler(Bor)
  end
end
