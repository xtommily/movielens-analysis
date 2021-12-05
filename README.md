# movielens-analysis

The goal of this project is execution of ETL process for data set provided for non-commercial use by GrouLens, that can be reached under https://grouplens.org/datasets/movielens/latest/. ml-latest-small.zip version is used in the project. The dataset consists of four .csv files containing information about movies, their ratings and external links for IMDb and TMDB. Detailed information about this dataset can be found under https://files.grouplens.org/datasets/movielens/ml-latest-small-README.html.

## Project environment
In order to accomplish the task two docker containers were used. As a data server an instance of Postgres was set up, and the data from CSVs were inserted automatially due to scheme defined in data/init.sql. Another container is deployed to provide an environment for analysis. In order to connect to Potgres database and execute SQL queries psycopg2 (https://pypi.org/project/psycopg2/) driver is used, that is one of the most popular solution for Python + Postgres connection.

To automate docker container deployment a docker-compose file was created, that contains configration needed for set up. In order to set it up nd running please use terminal, navigate to root of this git repo and type in docker-compose up. Please make sure that Docker engine and docker-compose are installed on your machine. For Postgres and Jupyter containers images available via Dockerhub are used. psycopg2 is installed in jupyter container after it starts.

## Database analysis

The analytics part is handled in jupyter container. After the deployment please go under URL stated in the terminal output and open work/analytics.ipynb in JupyterLab environment.
