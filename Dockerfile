# --- Build stage ---
FROM swift:5.10 AS build
WORKDIR /app

# Копируем манифест пакета (без Package.resolved — он создастся сам)
COPY Package.swift ./

# Загружаем зависимости (создаст Package.resolved внутри контейнера)
RUN swift package resolve

# Копируем исходники
COPY . .

# Собираем проект
RUN swift build -c release

# --- Run stage ---
FROM swift:5.10-slim
WORKDIR /run

# Устанавливаем curl (для healthcheck)
RUN apt-get update && apt-get install -y curl && rm -rf /var/lib/apt/lists/*

# Копируем бинарники
COPY --from=build /app/.build/release /run/
COPY --from=build /app/Sources /run/Sources

EXPOSE 3001
CMD ["./Run"]
