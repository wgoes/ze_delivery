# ze_delivery

Para configurar o ambiente é necessário:

Ruby instalado.
ter a gem "bundler" instalada.

Basicamente para montar o ambiente, foi criado um diretório e o mesmo foi aberto no visual studio code.

No visual code criei um arquivo Gemfile e configurei as seguintes dependencias e salvei:

source "http://rubygems.org"

gem "capybara", "3.18.0"
gem "cucumber", "3.1.2"
gem "rspec", "3.8.0"
gem "selenium-webdriver", "3.142.0"

Em seguida abrí o cmder no diretório do projeto e executei o comando "bundle install" para instalar essas dependências.

Executar o comando "cucumber --init" para criar a estrutura padrão do cucumber (features, step_definitions e o env.rb)

No arquivo env.rb é necessário fazer o require das seguintes dependências:

require "capybara"
require "capybara/cucumber"
require "selenium-webdriver"
require "rspec"

Ainda no arquivo Env.rb é feito a configuração do capybara:

Capybara.configure do |config|
  config.default_driver = :selenium_chrome
  config.default_max_wait_time = 10
end

Daí pra frente é basicamente automatizar os cenários.
