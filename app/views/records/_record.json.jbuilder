json.extract! record, :id, :name, :description, :expense, :amount, :order_on, :project_id, :created_at, :updated_at
json.url record_url(record, format: :json)
