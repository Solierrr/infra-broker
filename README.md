# infra-broker

Broker de mensagens do Solaria: 
RabbitMQ 4 com o plugin STOMP, usado pelo **api-messenger** como broker externo do WebSocket. 
O relay STOMP do Spring repassa os tópicos `/topic/**` para cá, e o RabbitMQ entrega cada evento às
sessões conectadas em **qualquer pod** do api-messenger.

## Portas

| Porta | Uso |
|---|---|
| 61613 | STOMP, a única que o api-messenger usa |
| 15672 | Management UI, só para diagnóstico |
| 5672 | AMQP, aberto pelo RabbitMQ mas sem uso pelos serviços |

