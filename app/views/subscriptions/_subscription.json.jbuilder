json.extract! subscription, :id, :name, :cost, :billing_period, :created_at, :updated_at
json.url subscription_url(subscription, format: :json)
