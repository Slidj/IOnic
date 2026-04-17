FROM ghcr.io/danny-avila/librechat:latest

# Робоча директорія
WORKDIR /app

# Копіюємо конфіг
COPY librechat.yaml /app/librechat.yaml

# На Render порт виставляється автоматично, але ми вказуємо середовище
ENV NODE_ENV=production
ENV SEARCH=true

# Запуск
CMD ["node", "api/server/index.js"]
