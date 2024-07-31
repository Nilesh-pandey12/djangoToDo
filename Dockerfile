FROM public.ecr.aws/lambda/python:3.12

ENV PYTHONUNBUFFERED=1

WORKDIR /code

COPY requirements.txt .

RUN pip3 install -r requirements.txt

COPY . .

EXPOSE 8000

ENTRYPOINT ["python3","manage.py","runserver"]
CMD ["0.0.0.0:8000"]
