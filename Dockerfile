FROM python:3.10
# EXPOSE 5000
EXPOSE 8080
WORKDIR /app
COPY ./requirements.txt requirements.txt
RUN pip install --no-cache-dir --upgrade -r requirements.txt
COPY . .

# CMD ["flask", "run", "--host", "0.0.0.0"]
# CMD ["gunicorn", "--bind", "0.0.0.0:80", "app:create_app()"]
# CMD ["/bin/bash", "docker-entrypoint.sh"]
# CMD ["python", "app.py"]

# RUN flask db upgrade
# CMD ["python", "app.py"]


CMD ["/bin/bash", "docker-entrypoint.sh"]