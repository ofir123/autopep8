FROM python:3.8.6-alpine3.12

LABEL maintainer="Ofir Brukner <mail@ofirbrukner@gmail.com>"
LABEL repository="https://github.com/ofir123/autopep8"
LABEL homepage="https://github.com/ofir123/autopep8"

LABEL com.github.actions.name="autopep8"
LABEL com.github.actions.description="Automatically formats Python code to conform to the PEP 8 style guide."
LABEL com.github.actions.icon="code"
LABEL com.github.actions.color="blue"

COPY LICENSE README.md /

COPY requirements.txt /tmp/
RUN pip install --requirement /tmp/requirements.txt

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
CMD ["--help"]
