# QUINTECH REBASE - E-mails HTML para iniciantes

Aplicação criada para demonstrar alguns dos problemas encontrados ao desenvolver e-mails HTML.

Usando um endereço de e-mail do Gmail fornecido através do arquivo `.env`, ela é capaz de enviar 3 e-mails diferentes:

- E-mail contendo imagem SVG;
- E-mail usando flexbox para definir layout;
- E-mail usando `<table>` para definir layout.

O intuito é demonstrar que, a depender do cliente que recebe o e-mail, algumas dessas opções
não funcionam como esperado. Ao enviar os 3 para Outlook e Gmail, por exemplo, apenas o terceiro funciona corretamente
em ambos (em 05/10/23).

## Como usar

1. Clone o repositório e acesse o seu diretório.
2. Certifique-se de ter o Docker instalado na sua máquina e execute:

```bash
docker compose up
# OU
docker-compose up
```

3. Em um segundo terminal, acesse o container:

```bash
docker compose exec -it app bash
# OU
docker-compose exec -it id_do_container bash
```

4. Dentro do container, acesse o console Rails:

```bash
rails c
```

5. Use o `TalkMailer` para enviar os e-mails que desejar:

```ruby
TalkMailer.with(recipient: 'endereco@email.com').svg_mail.deliver_now
TalkMailer.with(recipient: 'endereco@email.com').flex_mail.deliver_now
TalkMailer.with(recipient: 'endereco@email.com').table_mail.deliver_now
```

Caso deseje ver _previews_ dos e-mails que serão enviados, basta acessar `/rails/mailers/talk_mailer/nome_do_email`.
