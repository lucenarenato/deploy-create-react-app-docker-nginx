# Deploy your Create React App with Docker and Nginx

> Uma das principais frustrações quando se trata do Create React App, ou realmente de qualquer aplicativo de front-end que é servido estaticamente sem que um servidor o faça, é que suas rotas agora estão ausentes. Você pode acessá-los de dentro do aplicativo e ir de uma página para outra, mas se tentar acessar uma página diretamente - bem, isso acontece: https://isthereuber.in/leiria ('404 O caminho solicitado não pôde ser encontrado').

## After this we need to tell docker what it needs to run our app and in this case we need to do three things:

-  1 -    Copy the build folder over to /var/www
-  2 -    Copy the nginx.conf to it’s folder in /etc/nginx/
-  3 -    Expose the port 80 to the public since that is the one we are using in the nginx config

> docker run --rm -d 8080:80 fooapp:v1
> O sinalizador --rm diz ao docker para remover o contêiner após executar nosso contêiner de aplicativo e -d instrui o docker a vincular a porta 80 em nossa máquina host à porta 8080 do contêiner de aplicativo.

## Start o dockerfile

```
./start.sh
```
