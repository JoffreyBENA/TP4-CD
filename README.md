# TP4-CD

Documentation du Projet de Déploiement Continu pour Applications Python

Description des fichiers fournis

Le dépôt Git contient les fichiers suivants :

    - Jenkinsfile: Le fichier de pipeline Jenkins décrivant les étapes du pipeline de déploiement continu pour les applications Python.
    - gitlab-ci.yml: Le fichier de pipeline GitLab CI décrivant les étapes du pipeline de déploiement continu pour les applications Python.
    -.github/workflows/main.yaml: Le fichier de workflow GitHub Actions décrivant les étapes du pipeline de déploiement continu pour les applications Python.
    - requirements.txt: Le fichier contenant les dépendances Python requises pour le projet.
    -.flake8: Le fichier de configuration pour l'outil Flake8, utilisé pour vérifier la conformité du code Python.
    -pytest.ini: Le fichier de configuration pour l'outil Pytest, utilisé pour exécuter les tests fonctionnels.
    -main.yaml: Le fichier YAML contenant les étapes du pipeline de déploiement continu en tant que référence.

Description des pré-requis

Avant de pouvoir exécuter le pipeline de déploiement continu, assurez-vous d'avoir les pré-requis suivants :

    - Un environnement de développement avec Python installé.
    - Un compte et un projet configurés dans l'outil de CI/CD choisi (Jenkins, GitLab CI, ou GitHub Actions).
    - Les accès et les autorisations appropriés pour se connecter aux différents services tels que Docker Hub, le cloud provider (GCP, AWS, etc.), et Kubernetes (le cluster Kubernetes doit déjà être déployé pour la production).
    - Les variables d'environnement configurées pour les secrets sensibles tels que les identifiants d'accès au Docker Hub et les clés d'API pour les services cloud.

Schéma de présentation des étapes du pipeline et des environnements cibles

Le pipeline de déploiement continu comprend les étapes suivantes :

    1- Build : Cette étape consiste à récupérer l'image Docker depuis le Docker Hub et à construire l'application.
    2- Scan : Dans cette étape, l'image Docker est scannée pour détecter les vulnérabilités à l'aide de l'outil Docker Scout ou d'un autre outil de scan.
    3- Deploy : En fonction de l'environnement cible sélectionné (dev, test, prod), l'image Docker est déployée de différentes manières :
        - Pour l'environnement de développement (dev), une machine virtuelle est créée sur le cloud et l'application est exécutée avec la commande docker run.
        - Pour l'environnement de test (test), une machine virtuelle est créée et Docker Compose est utilisé pour exécuter l'application avec l'ensemble des machines nécessaires.
        - Pour l'environnement de production (prod), l'application est déployée dans un cluster Kubernetes à l'aide de la configuration Kubernetes spécifiée.
    4- Get Details : Cette étape consiste à récupérer les détails du déploiement, tels que l'adresse IP et le port sur lesquels l'application est accessible.
    5- Functional Tests : Les tests fonctionnels sont exécutés sur l'environnement cible pour vérifier le bon fonctionnement de l'application.
    6- Generate Report : Un rapport est généré pour récapituler le déploiement et les tests effectués.

Configuration des paramètres de pipeline

Avant d'exécuter le pipeline de déploiement continu, veuillez configurer les paramètres suivants :

    - URL du registre d'image, nom d'utilisateur, nom de l'image et version : Assurez-vous d'indiquer les bonnes informations pour récupérer l'image Docker depuis le Docker Hub.
    - Type d'environnement cible (dev, test, prod) et leurs paramètres de configuration : Configurez les paramètres appropriés pour chaque environnement dans le fichier de pipeline correspondant (Jenkinsfile, gitlab-ci.yml, ou .github/workflows/main.yaml).
    - Chemin des fichiers de tests fonctionnels : Spécifiez le chemin vers les fichiers de tests fonctionnels dans le fichier de configuration approprié (pytest.ini).
    - Variables d'environnement et secrets : Assurez-vous que les variables d'environnement et les secrets nécessaires sont configurés dans l'outil de CI/CD pour accéder aux services tels que Docker Hub, le cloud provider, et Kubernetes.

Veuillez vous référer à la documentation spécifique de l'outil de CI/CD choisi pour plus de détails sur la configuration des paramètres.

Ceci conclut la documentation du projet de déploiement continu pour les applications Python. Pour toute question supplémentaire, n'hésitez pas à consulter les fichiers et à vous référer à la documentation de chaque outil utilisé.
