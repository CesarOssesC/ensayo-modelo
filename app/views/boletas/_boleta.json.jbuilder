json.extract! boleta, :id, :payer, :flowOrder, :status, :subject, :amount, :currency, :media, :token, :asociado_id, :estado, :tipo_pago_id, :created_at, :updated_at
json.url boleta_url(boleta, format: :json)
