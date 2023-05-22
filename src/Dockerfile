FROM python:3.9


ADD ./ /code

WORKDIR /code

ENV PATH="/code:${PATH}"

RUN ./install_env.sh
RUN rm build.sh Dockerfile requirements.txt README.md



CMD jupyter notebook  --no-browser --port 10981 --ip 0.0.0.0 --allow-root --NotebookApp.token='' --NotebookApp.password=''
