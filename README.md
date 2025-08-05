# Aprendiendo Google Cloud Platform | Laboratorio práctico
"Aprendiendo Google Cloud Platform" es el nombre que le he dado a la Práctica Final del módulo "Migración a la nube: Google Cloud Platform" de la XII Edición Bootcamp DevOps & Cloud Computing Full Stack de KeepCoding.

Se trata de una práctica con unos hitos marcados que tienen como objetivo aprender a cómo trabajar con la nube, conocer los distintos servicios y construir soluciones sobre Google Cloud Platform.

El resultado final contempla un laboratorio con una arquitectura fiticia y simplificada, pero funcional. En el mismo documento PDF [01 - Evaristo GZ - Práctica Final - Migración a la nube GCP.pdf](https://github.com/EvaristoGZ/aprendiendo-GCP/blob/main/01%20-%20Evaristo%20GZ%20-%20Pr%C3%A1ctica%20Final%20-%20Migraci%C3%B3n%20a%20la%20nube%20GCP.pdf) explico y resuelvo cada hito, muchos de ellos gestionados desde terminal mediante la CLI *gcloud*.

## Diagrama de arquitectura
![Diagrama de arquitectura desplegada en GCP](https://github.com/EvaristoGZ/aprendiendo-GCP/blob/main/02%20-%20Diagrama%20GCP%20-%20Evaristo%20GZ.drawio.jpg)

## Contenido del laboratorio
El resumen del contenido es, principalmente, el siguiente:
- Compute Engine: creación de imágenes personalizadas, plantillas y grupos de instancias con autoescalado.
- Cloud SQL: instancias de MySQL, backups automáticos, exportación/importación desde buckets de Cloud Storage.
- App Engine: despliegue de apps Python, configuración multiservicio y gestión de versiones.
- Cloud Storage: creación de buckets y archivos.
- Cloud Load Balancing: balanceadores HTTP y pruebas de rendimiento con Apache Benchmark.
- IAM y facturación: control de acceso, permisos y alertas de presupuesto.
- Infraestructura como código (Terraform): definición de provider y sencillo tf que crea una red virtual, un bucket de almacenamiento y una máquina virtual.
