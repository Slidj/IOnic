# Використовуємо правильну назву образу для розробки (full version)
FROM ghcr.io/danny-avila/librechat-dev:latest

WORKDIR /app

# Копіюємо конфігурацію
COPY librechat.yaml /app/librechat.yaml

# Змінні для активації адмін-функцій
ENV NODE_ENV=production
ENV SEARCH=false
ENV CONFIG_BYPASS_VALIDATION=true

# Флаги для примусового показу адмінки
ENV ALLOW_ADMIN_NOTIFICATIONS=true
ENV SHOW_ADMIN_MENU_ITEM=true

# На Render порт призначається автоматично, але зазвичай це 3080
ENV PORT=3080
EXPOSE 3080

CMD ["npm", "run", "backend"]
