module Coinbase
  module Exchange
    # Encapsulate data for an API response
    class APIResponse
      attr_reader :received_at

      def initialize(resp)
        @received_at = Time.now
        @response = resp
      end

      def raw
        @response
      end

      def body
        raise NotImplementedError
      end

      def headers
        raise NotImplementedError
      end

      def status
        raise NotImplementedError
      end
    end
  end
end
