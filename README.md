# CineGraph

## Visão Geral
O **CineGraph** é um projeto de **grafo de conhecimento** desenvolvido para modelar um serviço de streaming, utilizando **Neo4j** e **Cypher**.  
O objetivo é representar usuários, conteúdos (filmes e séries) e seus relacionamentos, permitindo consultas ricas e análises baseadas em grafos.

Este projeto foi desenvolvido com foco em **clareza de modelagem**, **organização** e **boas práticas**, sendo adequado para fins acadêmicos e de portfólio técnico.

---
## Entidades Principais
- **User**: usuários da plataforma
- **Movie**: filmes disponíveis
- **Series**: séries disponíveis
- **Actor**: atores
- **Director**: diretores
- **Genre**: gêneros de conteúdo

---

## Relacionamentos
- **WATCHED** (`User → Movie/Series`)  
  - Propriedade: `rating`
- **ACTED_IN** (`Actor → Movie/Series`)
- **DIRECTED** (`Director → Movie/Series`)
- **IN_GENRE** (`Movie/Series → Genre`)

---

## Tecnologias Utilizadas
- **Neo4j**
- **Cypher Query Language**

---

## Como Executar

1. Inicie o **Neo4j** (Neo4j Desktop ou Neo4j Browser)
2. Execute os scripts **nesta ordem**:
   1. `constraints.cypher`
   2. `nodes.cypher`
   3. `relationships.cypher`
3. Após a execução, o grafo estará pronto para consultas.

---

## Exemplos de Consultas

- Conteúdos bem avaliados por usuários  
- Filmes e séries por gênero  
- Atores que participaram de filmes dirigidos por um diretor específico  
- Histórico de consumo de usuários  

---

## Observações
- O projeto utiliza **constraints de unicidade** para garantir integridade dos dados.
- A separação dos scripts segue boas práticas de organização e manutenção.
- A modelagem é facilmente extensível para sistemas de recomendação.

---

## Autor
Projeto desenvolvido para fins de estudo e portfólio técnico.


## Estrutura do Repositório
