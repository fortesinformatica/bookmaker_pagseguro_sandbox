json.array!(@resposta_pagseguros) do |resposta_pagseguro|
  json.extract! resposta_pagseguro, :id
  json.url resposta_pagseguro_url(resposta_pagseguro, format: :json)
end
