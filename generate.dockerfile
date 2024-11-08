FROM python:3.10-slim
WORKDIR /usr/src/app
RUN pip3 install numpy Faker tzlocal
ADD generate.py generate.py
CMD ["python", "generate.py", "-n", "0", "--min-delay", "20", "--max-delay", "2000", "-o", "LOG"]