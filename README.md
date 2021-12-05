# movielens-analysis

The goal of this project is execution of ETL process for dataset provided for non-commercial use by GrouLens, that can be reached under [MovieLens Latest Datasets](https://grouplens.org/datasets/movielens/latest/). _ml-latest-small_ version is used in this project. The dataset consists of 4 .csv files that contain information about movies, their ratings and external links for IMDb and TMDB. Detailed information about this dataset can be found under [dataset readme](https://files.grouplens.org/datasets/movielens/ml-latest-small-README.html).

## Project environment
In order to accomplish the task two docker containers were used. As a data server an instance of Postgres was set up, and the data from CSVs were inserted automatially due to scheme defined in _data/init.sql_. Another container is deployed to provide an environment for analysis. In order to connect to Potgres database and execute SQL queries [psycopg2](https://pypi.org/project/psycopg2/) driver is used, which is the most popular Postgres adapter for Python language.

To automate docker container deployment a _docker-compose.yml_ file was created, that contains configration needed for set up. In order to set it up nd running please use your terminal, navigate to the root of this git repo and type in ```docker-compose up```. Please make sure that __docker engine__ and __docker-compose__ are installed on your machine. 

For [Postgres](https://hub.docker.com/_/postgres) and [Jupyter](https://hub.docker.com/r/jupyter/base-notebook) containers images available via **Dockerhub** are used. [psycopg2](https://pypi.org/project/psycopg2/) is installed in jupyter container after it starts.

## Database analysis

The analytics part is handled in jupyter container. After the deployment please go under URL stated in the terminal output and open _work/analytics.ipynb_ in JupyterLab environment.
