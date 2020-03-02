# Deploy your Create React App with Docker and Nginx

> Uma das principais frustrações quando se trata do Create React App, ou realmente de qualquer aplicativo de front-end que é servido estaticamente sem que um servidor o faça, é que suas rotas agora estão ausentes. Você pode acessá-los de dentro do aplicativo e ir de uma página para outra, mas se tentar acessar uma página diretamente - bem, isso acontece: https://isthereuber.in/leiria ('404 O caminho solicitado não pôde ser encontrado').

## After this we need to tell docker what it needs to run our app and in this case we need to do three things:

-  1 -    Copy the build folder over to /var/www
-  2 -    Copy the nginx.conf to it’s folder in /etc/nginx/
-  3 -    Expose the port 80 to the public since that is the one we are using in the nginx config

> docker run --rm -d 8080:80 fooapp:v1
> O sinalizador --rm diz ao docker para remover o contêiner após executar nosso contêiner de aplicativo e -d instrui o docker a vincular a porta 80 em nossa máquina host à porta 8080 do contêiner de aplicativo.

# dockerized-react-app

This project was bootstrapped with [Create React App](https://github.com/facebook/create-react-app).

<p align='center'>
<img src='screencast.svg' width='600' alt='npm start'>
</p>

*Este repositório foi criado, como teste para o artigo: [Dockerizando uma aplicação React JS](https://medium.com/@atmosmps/dockerizando-uma-aplica%C3%A7%C3%A3o-react-js-f6a22e93bc5d)*. Veja o artigo para mais informações.


Este repositório contém um script que foi criado para facilitar a conteinerização e deploy de uma aplicação frontend com React usando o Docker. O script está no arquivo: `run-app-deploy.sh`. Você pode copiar este arquivo e modifica-lo de acordo com sua necessidade.

Para levantar containers preparados para desenvolvimento utilize:

```./run-app-deploy.sh --dev```

Para levantar containers preparados para produção utilize:

```./run-app-deploy.sh --prod```

p.s: se você tiver problemas para executar o arquivo ```run-app-deploy.sh``` execute o seguinte comando:

```chmod +x run-app-deploy.sh```

Sugestões são bem vindas :)



- Start o dockerfile

```
./start.sh
```
# Para verificar se existem volumes órfãos do Docker:
> docker volume ls -qf dangling=true
# Para excluir volumes órfãos do Docker:
> docker volume rm $(docker volume ls -qf dangling=true)

- Renato Lucena
