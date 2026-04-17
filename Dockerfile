# Використовуємо образ з повною підтримкою всіх функцій
FROM ghcr.io/danny-avila/librechat-dev-full:latest

WORKDIR /app

# Копіюємо конфіг
COPY librechat.yaml /app/librechat.yaml

# Змінні для активації адмінки в "силовому" режимі
ENV NODE_ENV=production
ENV SEARCH=false
ENV CONFIG_BYPASS_VALIDATION=true

# Флаги, які вмикають функціонал адміна на рівні коду
ENV ALLOW_ADMIN_NOTIFICATIONS=true
ENV SHOW_ADMIN_MENU_ITEM=true
ENV ENABLE_ADMIN_AND_USER_MANAGEMENT=true

# Шлях до бази (Render підхопить з налаштувань)
ENV MONGO_URI=${MONGO_URI}

CMD ["node", "api/server/index.js"]
