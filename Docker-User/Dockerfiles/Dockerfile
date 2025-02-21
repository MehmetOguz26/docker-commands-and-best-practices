FROM python

WORKDIR /usr/src/app

COPY *.py .

RUN pip install --no-cache-dir flask

ENV USER=pythonuser
ENV GROUP=pythongroup

RUN groupadd -r ${GROUP} && useradd -m -r -g ${GROUP} ${USER}

RUN chown -R ${USER}:${GROUP} /usr/src/app

USER ${USER}

CMD ["python", "app.py"]

EXPOSE 5000
