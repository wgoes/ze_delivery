$productByAddress = ProductsByAddressPage.new
$productsResult = ProductsResultPage.new
$address = "Rua da Penha, 80 Centro, Sorocaba - SP"

Dado("que o cliente acessou o site.") do
  $productByAddress.access
end

Dado("informou que tem {int} anos ou mais.") do |int|
  $productByAddress.age_button_yes.click
  $productByAddress.accept_cookie.click
end

Quando("informar o endereço.") do
  $productByAddress.input_search_address_fake.click
  $productByAddress.input_search_address.set $address
  $productByAddress.suggest_search_address.click
  $productByAddress.input_number_address.set "80"
  $productByAddress.check_complement_address.click
end

Quando("clicar clicar em Ver produtos disponíveis.") do
  $productByAddress.button_view_products.click
end

Então("os produtos disponíveis para a região em questão devem ser exibidos ao cliente.") do
  expect($productByAddress.current_address.text).to eql $address
  expect(page).to have_selector $productsResult.product_list
end
