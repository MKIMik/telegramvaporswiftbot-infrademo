# 🚀 Telegram Vapor Bot — Infrastructure Demo

![CI/CD](https://github.com/MKIMik/telegramvaporswiftbot-infrademo/actions/workflows/deploy.yml/badge.svg)
![GitHub Workflow Status](https://img.shields.io/github/actions/workflow/status/MKIMik/telegramvaporswiftbot-infrademo/deploy.yml?label=CI/CD%20Deploy&logo=githubactions&style=for-the-badge)
![Docker](https://img.shields.io/badge/docker-ready-blue?logo=docker&style=for-the-badge)
![Redis](https://img.shields.io/badge/redis-active-red?logo=redis&style=for-the-badge)
![Swift Vapor](https://img.shields.io/badge/swift%20vapor-backend-orange?logo=swift&style=for-the-badge)

---

## 🧩 Описание

Демонстрационный DevOps-проект, реализующий **CI/CD-пайплайн** и инфраструктуру для Telegram-бота на **Swift + Vapor**.  
Проект показывает базовые принципы автоматизации деплоя, мониторинга контейнеров и интеграции с Redis, Prometheus и Telegram API.

---

## ⚙️ Используемые технологии

| Компонент | Назначение |
|------------|------------|
| **Swift + Vapor** | Backend API и логика Telegram-бота |
| **Docker / Docker Compose** | Контейнеризация приложения и Redis |
| **Redis** | Хранилище состояния, кэш и брокер событий |
| **GitHub Actions** | Автоматический деплой через SSH и tmux |
| **Prometheus (планируется)** | Сбор метрик для мониторинга |
| **Grafana (планируется)** | Визуализация телеметрии |
| **Telegram Bot API** | Уведомления и интерактивное управление |

---

## 💡 О проекте

Этот репозиторий демонстрирует DevOps-подход к работе с backend-сервисом:
- автоматизация деплоя через GitHub Actions и SSH;
- изолированная инфраструктура с Docker Compose;
- healthcheck и уведомления о статусе в Telegram;
- архитектура, подготовленная под расширение (Prometheus, Grafana, ArgoCD).

Проект задуман как pet-практика для портфолио DevOps-инженера.


## 🏗️ Архитектура проекта

Подробное описание архитектуры — в отдельном документе [`architecture.md`](architecture.md).  
В нём описано, как реализован пайплайн CI/CD, структура контейнеров и взаимодействие между сервисами.

---

## 🚀 Как запустить локально

```bash
git clone https://github.com/MKIMik/telegramvaporswiftbot-infrademo.git
cd telegramvaporswiftbot-infrademo

# Создаём .env на основе примера
cp .env.example .env
# Отредактируйте переменные окружения (токен бота, пароль Redis и т.д.)

# Собираем и запускаем контейнеры
docker-compose up -d --build


