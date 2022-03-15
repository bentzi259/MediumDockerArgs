from python:3.8-slim

COPY . /app/

WORKDIR /app

RUN chmod +x ./entrypoint.sh

ENTRYPOINT [ "/app/entrypoint1.sh" ]

CMD [ "echo", "Default argument from CMD instruction" ]