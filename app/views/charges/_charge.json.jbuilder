json.extract! charge, :id, :title, :summary, :start_date, :end_date, :is_current, :enterprise_id, :org_level, :market_responsability, :created_at, :updated_at
json.url charge_url(charge, format: :json)
