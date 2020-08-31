FROM python:3-alpine
WORKDIR /usr/src/app
EXPOSE 8000
COPY requirements.txt .
RUN pip install -qr requirements.txt
COPY hello-python.py .
CMD ["python3", "./hello-python.py"]
