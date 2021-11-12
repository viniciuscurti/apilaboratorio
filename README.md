Documentacao Api
Descricao de como enviar requisicoes api para obter respostas completa do CRUD

docker-compose up para iniciar todas as dependencias necessarias.


POST
Create - Laboratorio

http://localhost:3000/laboratories

json
{
"name": "Laboratorio do Vinao",
"address": "Rua do Vinao"
}

GET
Index - Laboratorio

http://localhost:3000/laboratories

PUT
Update - Laboratorio

http://localhost:3000/laboratories/3

Bodyraw (json)
json
{
"name": "Laboratorio do Vinao",
"address": "Rua do Vinao",
"active": false
}


DEL
Delete - Laboratorio
Substituir id do path abaixo pelo Id do laboratorio a ser excluido

http://localhost:3000/laboratories/:id

POST
Create - Exame

http://localhost:3000/exams

Bodyraw (json)
json
{
"name": "Exame Teste",
"exam_type": "Imagem"
}

GET
Index - Exame

http://localhost:3000/exams

PUT
Update - Exame Copy

http://localhost:3000/exams/3

Bodyraw (json)
json
{
"name": "Laboratorio do Vinao",
"address": "Rua do Vinao",
"active": false
}

POST
Associar - Laboratorio/exame

http://localhost:3000/associate_exam

Bodyraw (json)
json
{
"exam_id": 2,
"laboratory_id": 3
}

POST
Desassociar - Laboratorio/exame Copy

http://localhost:3000/disassociate_exam

Bodyraw (json)
json
{
"exam_id": 2
}

GET
Pesquisar - Exame

http://localhost:3000/search_labs_by_exam

Bodyraw (json)
json
{
"name": "Laboratorio do Vinao"
}
