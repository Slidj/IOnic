# Используем конкретную стабильную версию вместо latest
FROM ghcr.io/danny-avila/librechat:v0.7.3

WORKDIR /app

COPY librechat.yaml /app/librechat.yaml

# Флаги для активации серверных функций
ENV NODE_ENV=production
ENV SEARCH=false
ENV CONFIG_BYPASS_VALIDATION=true

# Явно говорим, что нам нужна админка
ENV ALLOW_ADMIN_NOTIFICATIONS=true
ENV SHOW_ADMIN_MENU_ITEM=true

CMD ["node", "api/server/index.js"]
