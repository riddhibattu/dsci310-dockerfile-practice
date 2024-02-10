# Using the specific r-notebook image as the base
FROM quay.io/jupyter/r-notebook:2023-11-19

# Install specific versions of scipy for Python and plotly for R
RUN conda install --quiet --yes \
    'scipy=1.12.0' \ 
    'r-plotly=4.10.4' \ 
    && conda clean --all --yes
