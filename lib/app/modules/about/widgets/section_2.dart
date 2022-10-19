import 'package:flutter/material.dart';

class Section2 extends StatelessWidget {
  const Section2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        // color: color,
        width: MediaQuery.of(context).size.width,
        height: 1000,
        color: Colors.green[100],
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(40.0),
              child: Text(
                'Vakinha Burger Lanchonete',
                style: TextStyle(
                  fontSize: MediaQuery.of(context).size.width * 0.04,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 24.0),
              child: Text(
                '''
Vakinha Burger Lanchonete é uma lanchonete em São Carlos que fica no ao lado do IFSP, há                
mais de 3 anos encantando os seus clientes com seu variado cardápio de lanches e porções de 
dar água na boca, e agora contamos com o pagamento por PIX.
                ''',
                style: TextStyle(
                  fontSize: MediaQuery.of(context).size.width * 0.02,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 24.0),
              child: Text(
                '''
Se você procura um ótimo lugar em São Carlos para se encontrar com os amigos e familiares,    
para matar aquela fome, venha até o Vakinha Burger e experimente os deliciosos lanches e porções, 
confira nosso cardápio de delivery e faça o seu pedido.
                ''',
                style: TextStyle(
                  fontSize: MediaQuery.of(context).size.width * 0.02,
                ),
              ),
            ),
          ],
        ));
  }
}
