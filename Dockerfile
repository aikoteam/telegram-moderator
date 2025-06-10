# Використовуємо легкий та офіційний образ Node.js
FROM node:18-alpine

# Створюємо робочу директорію всередині контейнера
WORKDIR /usr/src/app

# Копіюємо package.json та package-lock.json для встановлення залежностей
COPY package*.json ./

# Встановлюємо тільки ті залежності, що потрібні для роботи
RUN npm install --only=production

# Копіюємо решту коду нашого бота
COPY . .

# Команда, яка буде запускати бота при старті контейнера
CMD [ "node", "index.js" ]
