git clone https://github.com/PabloCaiza/library_v2.git && cd ./library_v2 && cd ./app-authors && gradlew build && docker build -t stevenstryker/app-authors:1.0 . && cd .. && cd ./app-books && gradlew jar && gradlew copyLibs && docker build -t stevenstryker/app-books:1.0 . && cd .. && cd ./app-web && gradlew jar && gradlew copyLibs && docker build -t stevenstryker/app-web:1.0 . && docker push stevenstryker/app-web:1.0 && docker push stevenstryker/app-books:1.0 && docker push stevenstryker/app-authors:1.0 && cd .. && docker compose up