# Using the specific r-notebook image as the base
FROM quay.io/jupyter/r-notebook:2023-11-19

# Using conda to install at least two Python or R packages, pinning the version
RUN conda install --quiet --yes \
    'numpy=1.22*' \
    'matplotlib=3.5*' \
    && conda clean -tipsy
