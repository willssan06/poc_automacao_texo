Dado('que estou na página inicial do site JSONPlaceholder') do
  @menu_page.go
end

Dado('clico no link {string}') do |string|
  @menu_page.clicar_link_guide
end

Quando('clico em {string}') do |string|
  @menu_page.clicar_albums_photos
end

Quando('capturo os dados exibidos em tela') do
  @response = HTTParty.get("https://jsonplaceholder.typicode.com/albums/1/photos")
  @json_data = JSON.parse(@response.body)
end

Então('devo validar os dados do objeto com id = {int}') do |int|
  obj_with_id_6 = @json_data.find { |obj| obj['id'] == 6 }
  expect(obj_with_id_6).not_to be_nil
  expect(obj_with_id_6['albumId']).to eq(1)
end