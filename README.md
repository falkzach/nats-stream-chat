# NATS stream chat

## Dependencies

- docker

## Run

`docker compose up`

## Nats basics

### Start server

`nats server run`

`nats context select nats_development`

### Services

`nats reply hello.zac "Hi"`

`nats req hello.zac "{}"`

### Streams

`nats sub hello.world`

`nats pub hello.world "Hello World!`

## Fan in

1 subb mult pub

`nats sub hello.world`

`nats pub hellow.world "hello, world" --count=-1 --sleep=1s`

`nats pub hellow.world "hello, world" --count=-1 --sleep=1s`

### Fan out

`nats sub hello.world`

`nats sub hello.world`

`nats pub hellow.world "hello, world" --count=-1 --sleep=1s`

### Queue Group

mult sub on subject in a group together, distributed, no load balancer

`nats sub hellow.world --queue greeter`

`nats sub hellow.world --queue greeter`

`nats pub hellow.world "hello world" --count 10000`

### Wiretap

`nats sub >`

### Wildcard

`nats reply "hello.*" --command "echo 'Hello, {{1}}'" --sleep 1`

`nats req hello.foo`
