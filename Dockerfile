FROM rabbitmq:4.3.7-management-alpine

COPY config/rabbitmq.conf config/enabled_plugins /etc/rabbitmq/

# 61613 STOMP  | 15672 Management UI 
EXPOSE 61613 15672
