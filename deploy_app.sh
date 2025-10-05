#!/bin/bash

REPO_URL="https://github.com/SERMSN/shvirtd-example-python.git"
TARGET_DIR="/opt/app"

if [ -d "$TARGET_DIR" ]; then
  echo "Обновление репозитория..."
  cd $TARGET_DIR
  git pull
else
  echo "Клонирование репозитория..."
  git clone $REPO_URL $TARGET_DIR
  cd $TARGET_DIR
fi

echo "Запуск проекта..."
docker compose down
docker compose up -d

echo "Готово!"
