require 'lita'
require 'net/http'

module Lita
  module Handlers
    class Bor < Handler
      route(/^bor$/, :bor)
    end

    def bor
      Net::HTTP.get(URI('http://bash.im/forweb/?u'))
    end

    Lita.register_handler(Bor)
  end
end
