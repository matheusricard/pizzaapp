# 🍕 PizzaHome

![image](https://github.com/matheusricard/pizzaapp/assets/40220488/5703fee0-9c2c-4c31-94e7-5780376eb919)
![image](https://github.com/matheusricard/pizzaapp/assets/40220488/3adf50fb-a868-4056-92a0-337e0aa84e4b)
![image](https://github.com/matheusricard/pizzaapp/assets/40220488/319a5c12-7a44-4e46-873c-fe9455e9c702)
![image](https://github.com/matheusricard/pizzaapp/assets/40220488/26181a99-d606-4d99-9296-89d0e619e4d4)
![image](https://github.com/matheusricard/pizzaapp/assets/40220488/4f6a6c51-ef29-4019-8c67-ad394d8ea2c0)



## 📝 Descrição

`PizzaHome` é um aplicativo Flutter em desenvolvimento que permite ao cliente entrar e fazer pedidos em uma pizzaria.

## 🚀 Recursos

- Exibe duas pizzas na tela.
- Botão 'Entrar' na parte inferior da tela.

## 🛠️ Construído com

- Flutter

## 🏃‍♂️ Como Executar o Projeto

1. Clone este repositório para sua máquina local.
2. Navegue até a pasta raiz do projeto no terminal.
3. Execute `flutter pub get` para instalar todas as dependências.
4. Execute `flutter run` para iniciar o aplicativo.

## 📃 Código

Aqui está um trecho do código principal do aplicativo:

```dart
class PizzaHome extends StatelessWidget {
  const PizzaHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return MaterialApp(
      home: Scaffold(
        body: Stack(
          children: [
            // Código omitido para brevidade...
          ],
        ),
      ),
    );
  }
}
