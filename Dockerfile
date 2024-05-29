# Usa una imagen base de Python
FROM python:3.12.3

# Establece el directorio de trabajo en /app
WORKDIR /app

# Copia el archivo de requerimientos (requirements.txt) al directorio de trabajo
COPY requirements.txt .

# Instala las dependencias de la aplicación
RUN pip install --no-cache-dir -r requirements.txt

# Copia el resto del código de la aplicación al directorio de trabajo
COPY . .

# Expone el puerto 80 para que la aplicación sea accesible desde fuera del contenedor
EXPOSE 80

# Comando por defecto para ejecutar la aplicación cuando el contenedor se inicie
CMD ["python", "holavale.py"]
