	Образ для компиляции бинарников golang'a под alpine

1) Перенести файлы в удобную для вас директорию
2) Запустить build.sh указав параметром имя docker-репозитория (любое)
3) Запустить run.sh указав в параметрах имя пользователя и репозиторий с github
4) Забрать из директории output бинарник

sudo build.sh merabpyh
sudo run.sh merabpyh checker-client
