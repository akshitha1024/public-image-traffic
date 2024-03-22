# Frontend
FROM node:latest as frontend
WORKDIR /app/frontend
COPY frontend/package.json frontend/package-lock.json ./
RUN npm install
COPY frontend .
RUN npm run build

# Backend
FROM python:latest as backend
WORKDIR /app/backend
COPY backend .
RUN pip install -r requirements.txt

# Final Stage
FROM python:latest
WORKDIR /app
COPY --from=frontend /app/frontend/build ./frontend
COPY --from=backend /app/backend .

EXPOSE 5000
CMD ["python", "app.py"]
