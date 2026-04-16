# ============================================
# GIT — ПОЛНЫЙ НАБОР КОМАНД ДЛЯ СТАЖЁРА
# ============================================

# ---------- 1. НАСТРОЙКА (один раз) ----------
git config --global user.name "RedPunk77"
git config --global user.email "tvoja@pochta.com"
git config --global --list

# ---------- 2. СОЗДАНИЕ / КЛОНИРОВАНИЕ ----------
git init                                # создать репозиторий в текущей папке
git clone https://github.com/RedPunk77/MyProject.git

# ---------- 3. ПОСМОТРЕТЬ СОСТОЯНИЕ ----------
git status                              # какие файлы изменены/добавлены?
git log --oneline                       # история коммитов (кратко)
git log                                 # история коммитов (подробно)
git diff                                # изменения до git add
git diff --staged                       # изменения после git add

# ---------- 4. ДОБАВИТЬ ФАЙЛЫ ----------
git add test.cpp                        # добавить один файл
git add .                               # добавить все файлы в папке
git add --all                           # добавить всё (включая удалённые)

# ---------- 5. СОХРАНИТЬ КОММИТ ----------
git commit -m "Initial commit: test.cpp"
git commit -am "Обновил код"            # add + commit для отслеживаемых файлов

# ---------- 6. РАБОТА С GITHUB ----------
git remote add origin https://github.com/RedPunk77/MyProject.git
git remote -v                           # посмотреть удалённые репозитории
git branch -M main                      # переименовать ветку в main
git push -u origin main                 # первый пуш (установить связь)
git push                                # последующие пуши
git pull                                # скачать изменения с GitHub
git fetch                               # посмотреть изменения (не скачивая)

# ---------- 7. ОТКАТ ИЗМЕНЕНИЙ ----------
git checkout -- test.cpp                # отменить изменения в файле
git reset HEAD test.cpp                 # убрать из git add (оставить изменения)
git restore test.cpp                    # современный способ отменить
git restore --staged test.cpp           # убрать из git add

git reset --soft HEAD~1                 # отменить последний коммит (оставить изменения)
git reset --hard HEAD~1                 # отменить последний коммит (УДАЛИТЬ изменения)

# ---------- 8. ВЕТКИ ----------
git branch                              # посмотреть ветки
git branch feature/new                  # создать ветку
git checkout feature/new                # переключиться на ветку
git checkout -b feature/new             # создать и переключиться (одной командой)
git checkout main                       # вернуться в main
git merge feature/new                   # влить ветку в main
git branch -d feature/new               # удалить ветку
git push --set-upstream origin feature/new   # запушить новую ветку

# ---------- 9. ПОЛЕЗНЫЕ ДОПОЛНИТЕЛЬНО ----------
git log --oneline --graph               # история с графом веток
git show abc1234                        # посмотреть конкретный коммит
git mv oldname.cpp newname.cpp          # переименовать файл (git отследит)
git rm file.cpp                         # удалить файл (git отследит)
git stash                               # временно спрятать изменения
git stash pop                           # вернуть спрятанное

# ---------- 10. ТВОЙ ЕЖЕДНЕВНЫЙ ЦИКЛ ----------
git status                               # 1. что изменилось?
git add .                                # 2. добавил всё
git commit -m "сделал то-то"             # 3. сохранил
git push                                 # 4. отправил на GitHub
