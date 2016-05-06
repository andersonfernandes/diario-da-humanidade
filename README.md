# Diário da Humanidade
O Diário da Humanidade é um sistema para publicação de textos online sem ligação a um tema específico.

##### Os pre-requisitos para execução da aplicação são: 
 - Ruby
 - Node.js
 - PostgreSQL

Antes de rodar a aplicação certifique-se de que os campo 'username' e 'password' no arquivo config/database.yml correspondem a seu usuário e senha do PostgreSQL

##### Para rodar a aplicação execute:
 - bundle install
 - rake db:create
 - rake db:migrate
 - rails server
 
A aplicação ficará disponível no navegador pelo endereço: localhost:3000
