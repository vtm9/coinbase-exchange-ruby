require 'bundler/setup'
require 'webmock/rspec'

Bundler.setup

require 'coinbase/exchange'

MARKET_REFS   = %i[currencies
                   products
                   orderbook
                   last_trade
                   trade_history
                   price_history
                   daily_stats]

ACCOUNT_REFS  = %i[accounts
                   account
                   account_history
                   account_holds]

ORDER_REFS    = %i[bid
                   ask
                   cancel
                   orders
                   order
                   fills]

TRANSFER_REFS = %i[deposit
                   withdraw]

def endpoints
  (MARKET_REFS << ACCOUNT_REFS << ORDER_REFS << TRANSFER_REFS).flatten!
end

def mock_item
  { 'id' => 'test', 'status' => 'OK' }
end

def mock_collection
  [mock_item, mock_item]
end
