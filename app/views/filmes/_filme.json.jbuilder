json.extract! filme, :id, :titulo, :ano_lancamento, :ator_id, :created_at, :updated_at
json.url filme_url(filme, format: :json)
