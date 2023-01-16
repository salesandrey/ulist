# ulistproject

Eu como usuário, gostaria de criar uma lista, pesquisar por items e editar um item da lista.

 Critérios de aceitação:
- Usar o Firestore (Firebase) como banco de dados;
- Criar indicativo visual ao pesquisar items (loading)
- O item da lista de tarefa deve armazenar a data de criação/alteração e uma descrição da tarefa;
- Devo poder excluir um item da lista
- Devo poder alterar um item da lista
- Devo poder incluir um item

O que será avaliado
- Organização do projeto (arquivos e diretórios)
- Documentação README.md com instruções para iniciar o projeto e executar
- Testes unitários
- Gerenciador de estado
- Sistema de rota

# Firestore

O primeiro passo foi organizar uma estrutura para acessar minhas coleções no firestore. Inicialmente a primeira coleção será a de usuários com o email vinculado com chave desta coleção. Todas as leituras da coleção estarão sendo direcionadas para andreysales24@gmail.com.

Para a modelo das coleções de listas temos:

Coleção Listas - {nome,descrição,criadaEm}

Para o modelo de coleções de itens da lista temos:

Coleção Items = {nome,CriadaEm}

# Indicativos

Utilizado o CircularProgressIndicator durante o momento de busca de dados.

# Organização

Para organizar o projeto, foi utilizado Flutter Modular. Pensando no principio da única responsabilidade, temos um modulo que agrupa funções responsáveis para as funcionalidades da lista. E as páginas são separadas por função. A injeção de dependecias realizada foi incluida no modulo para cada controlador da classe, sendo global apenas o FireStore.

#Instruções de Execução Projeto

Utilizar o comando: flutter run main.dart ou flutter run

#Instruções de Execução Teste de Integração

Utilizar o comando com o emulador ligado: flutter test integration_test/add_list_test.dart

Realizei apenas um teste de integração para verificar se a funcionalidade de adicionar novas listas está funcionando. O teste será rodado e validará se uma lista com o nome de "Meus Desejos" será inclusa.

#Instruções de Teste Unitário

Utilizar o comando: flutter run test

#Gerenciamento de Estado

Utilizado Mobx. Onde as variavéis observadas são encontradas nas stores.

#Rotas

Utilizado Modular. A lista de rotas pode ser encontrada nos arquivos module.





