require 'lita'
require 'net/http'

module Lita
  module Handlers
    class Bor < Handler
      route(/^bor$/, :bor)
      
      def bor(response)
        Net::HTTP.get(URI('http://bash.im/forweb/?u'))
      end
    end

    Lita.register_handler(Bor)
  end
end
