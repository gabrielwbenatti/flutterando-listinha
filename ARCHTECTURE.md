# Design Patterns

- Repository Pattern: Para acesso a API externa.
- Service Pattern: Para isolar trechos de códigos com outras responsabilidades.
- Dependency Injection: Resolver dependências das classes.
- Store: Guardar e mudar estados.
- State pattern: Padrão que auxilia no gerenciamento estados.
- Adapter: Converter um objeto em outro.
- Result: Trabalhar com retorno Múltiplo.


# Package externos (Comum)

- uno: Cliente HTTP.
- result: Retorno múltiplo no formato Failure e Success.
- Mocktail: Para testes de unidade.


# Package externos (App)

- flutter_modular: Modularização de rotas e injeção de dependências.
- realm: Base de dados local.

# Package externos (Backend)

- shelf_modular: Modularização de rotas e injeção de dependências.
- Shelf: Criação de servidor Web.
- Postgres: Persistência de dados.
- Redis: Persistência de dados em memória.
