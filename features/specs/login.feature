#language: pt

Funcionalidade: Login
    Sendo um usuário
    Posso logar no sistema Invoices
    Para cadastrar clientes e tambem lançar cobranças

Cenario: Usuário faz login

    * acessa a página login

    Dado que eu tenho um usuário "franqueado"
    Quando faço login
    Então vejo o texto "Módulos"


Esquema do Cenario: Tentativa de login

    Dado que eu tenho o usuário <usuario> e <senha>
    Quando faço login
    Então vejo a mensagem <msg>

    Exemplos:
    | email             | senha    | msg                                      |
    | "ashdasldkljajsd" | "123456" | "ERRAUT008 - Usuário ou senha incorretos"|