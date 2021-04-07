# SMUSRS-rails
![SMUSRS image](https://user-images.githubusercontent.com/61697765/113811744-25571880-9743-11eb-841f-392961e0857b.png)
O SMUSRS-rails é o Sistema de Mapeamento de Usuários de Serviços Relacionados a Saúde integrado com o framework Ruby on Rails.

## Features
- Integrado com Rails 6

## Dependencias
- Ruby 3.0.0
- Rails 6

## Instalação
### Para executar o SMUSRS-rails:

- Instale todas as dependencias para instalar o rbenv:

```bash
sudo apt install curl
curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list

sudo apt-get update
sudo apt-get install git-core zlib1g-dev build-essential libssl-dev libreadline-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev libcurl4-openssl-dev software-properties-common libffi-dev nodejs yarn
```

- Instalar o rbenv para instalar o Ruby:

```bash
git clone https://github.com/rbenv/rbenv.git ~/.rbenv
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(rbenv init -)"' >> ~/.bashrc
exec $SHELL

git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build
echo 'export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"' >> ~/.bashrc
exec $SHELL

rbenv install 3.0.0
rbenv global 3.0.0
```

- Instalar o Rails:

```bash
gem install rails -v 6.1.1
```

- Clone o repositório:
```bash
git clone https://github.com/Grupinix/SMUSRS-rails.git
```

## Executando o projeto
Sempre que for executar o projeto, dê um git pull antes em development para sempre ter o projeto atualizado em sua máquina!

```bash
git checkout development
git pull origin development
```

Para iniciar o servidor, simplesmente rode ```rails s``` no seu terminal.

Para acessar a home do projeto, entre em ```localhost:3000```.
