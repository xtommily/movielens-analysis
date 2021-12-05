# movielens-analysis

The goal of this project is execution of ETL process for dataset provided for non-commercial use by [GroupLens](https://grouplens.org/), that can be reached under [MovieLens Latest Datasets](https://grouplens.org/datasets/movielens/latest/). _ml-latest-small_ version is used in this project. The dataset consists of 4 .csv files that contain information about movies, their ratings and external links for IMDb and TMDB. Detailed information about this dataset can be found under [dataset readme](https://files.grouplens.org/datasets/movielens/ml-latest-small-README.html). The dataset was published within the following paper:
> F. Maxwell Harper and Joseph A. Konstan. 2015. The MovieLens Datasets: History and Context. ACM Transactions on Interactive Intelligent Systems (TiiS) 5, 4: 19:1–19:19. https://doi.org/10.1145/2827872

## Project environment
In order to accomplish the task, two __Docker__ containers were used. As a data server an instance of __Postgres__ was set up. Another container is deployed to provide an environment for analysis with __JupyterLab__ server. In order to connect to Potgres database and execute SQL queries [psycopg2](https://pypi.org/project/psycopg2/) driver is used, which is the most popular Postgres adapter for Python language.

To automate Docker containers deployment a _docker-compose.yml_ file was created, that contains configration needed for the set up. In order to get it up and running please use your terminal, navigate to the root of this git repo and type in ```docker-compose up```. Please make sure that __docker engine__ and __docker-compose__ are installed on your machine. 

[Postgres](https://hub.docker.com/_/postgres) and [Jupyter](https://hub.docker.com/r/jupyter/base-notebook) containers were created with images available via __Dockerhub__. [psycopg2](https://pypi.org/project/psycopg2/) is installed in the Jupyter container after it starts.

Data is inserted automatially into Postgres database at container start, accordingly to scheme defined in _data/init.sql_. That file is configured in _docker-compose.yml_ to be passed and initialised with Postgres container.

## Database analysis

The analytics part is handled in Jupyter container. After the deployment please go under URL stated in the terminal output and open _work/analytics.ipynb_ in the JupyterLab environment.
