FROM ghcr.io/danny-avila/librechat:latest
WORKDIR /app
COPY librechat.yaml /app/librechat.yaml

# Обхід валідації конфігу (це виправить помилку ZodError)
ENV CONFIG_BYPASS_VALIDATION=true

# Основні налаштування
ENV NODE_ENV=production
ENV SEARCH=true

CMD ["node", "api/server/index.js"]
