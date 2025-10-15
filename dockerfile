# Imagen base
FROM python:3.10

# Evitar archivos .pyc y usar salida sin buffer
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# Crear directorio de trabajo
WORKDIR /app

# Copiar e instalar dependencias
COPY requirements.txt .
RUN pip install --upgrade pip && pip install -r requirements.txt

# Copiar el resto del proyecto
COPY . .

# Comando de inicio
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
