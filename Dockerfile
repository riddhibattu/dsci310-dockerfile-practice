# Using the specific r-notebook image as the base
FROM quay.io/jupyter/r-notebook:2023-11-19

# Using conda to install at least two Python or R packages, pinning the version
RUN conda install --quiet --yes \
    'r-tidyverse=1.3*' \
    'python=3.8*' \
    'pandas=1.1*' \
    && conda clean -tipsy
