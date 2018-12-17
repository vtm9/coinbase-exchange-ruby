require 'bundler/setup'
require 'webmock/rspec'
require 'em-http'

Bundler.setup

require 'coinbase/exchange'

MARKET_REFS   = %i[currencies
                   products
                   orderbook
                   last_trade
                   trade_history
                   price_history
                   daily_stats].freeze

ACCOUNT_REFS  = %i[accounts
                   account
                   account_history
                   account_holds].freeze

ORDER_REFS    = %i[bid
                   ask
                   cancel
                   orders
                   order
                   fills].freeze

TRANSFER_REFS = %i[deposit
                   withdraw].freeze

def endpoints
  (MARKET_REFS << ACCOUNT_REFS << ORDER_REFS << TRANSFER_REFS).flatten!
end

def mock_item
  { 'id' => 'test', 'status' => 'OK' }
end

def mock_collection
  [mock_item, mock_item]
end
