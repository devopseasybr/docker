<h1 align="center" style="border-bottom: none">
    <img alt="Docker" src="./img/docker.png" width="300" height="200">
</h1>

<center><h1>Docker</h1></center>

<p align="center">Acesse o <a href="https://docs.docker.com/" target="_blank">site oficial</a> 
para uma documentação completa, exemplos e guias.</p>

---

Esse projeto contém vários arquivos Dockerfiles que podem ser utilizados para criar imagens Docker que possam ser utilizadas nos respectivos Jobs da Pipeline CI/CD.

Tabela de Imagens Docker

|Imagem |Descrição|Versão|
|:---   |:---     |:---: |          
|Ansible|Ferramenta de gerenciamento de configuração.|2.18.3
|Hadolint|Ferramenta linter para garantir a correção da sintaxe do Dockerfile.|2.12.0
|Docker|Utilizado para criar outras imagens Docker.|27.3.1
|Flyway|Utilizado para execução de scripts SQL.|11.3.4
|GCP-Cli|Bibliotecas e ferramentas para interagir com os produtos e serviços do Google Cloud.|512.0.0
|Kubectl|Utilizado para instalar aplicações, inspecionar e gerenciar recursos do cluster K8s .|1.31.0
|Maven|Utilizado para realizar o build de projetos desenvolvidos na linguagem Java.|Maven 3.8.7
|Nodejs|Utilizado para realizar o build de projetos desenvolvidos na linguagem Java.|20.11.0
|Openshift|Possui o comando oc para instalar, inspecionar e gerenciar recursos do cluster Openshift.|4.14.1

## Pré-requisitos

Ter o Docker instalado na máquina host.

## Criação da Imagem Docker

1. Acesse o diretório desejado e execute o comando abaixo:

```bash
cd diretorio/
docker build --no-cache -t nome_imagem:latest -f . 
```

2. Crie um contêiner da imagem recém criada:

```bash
docker run -dit --name nome_conteiner nome_imagem:latest sh 
```

3. Acesse o contêiner:

```bash
docker exec -it nome_conteiner sh
```

---