class FruitService
  def conn
    Faraday.new("https://fruityvice.com/api/fruit/") do |f|
      f.adapter Faraday.default_adapter
    end
  end

  def get_url(url)
    response = conn.get(url)
    JSON.parse(response.body, symbolize_names: true)
  end

  def search_by_name(name)
    get_url("#{name}")
  end
end