# Using the specific r-notebook image as the base
FROM quay.io/jupyter/r-notebook:2023-11-19

# # Attempt to install packages with versions more likely to be compatible with Python 3.11.6
# RUN conda install --quiet --yes \
#     'scipy' \
#     'r-plotly' \
#     && conda clean --all --yes

# Install specific versions of scipy for Python and plotly for R
RUN conda install --quiet --yes \
    'scipy=1.12.0' \ 
    'r-plotly=4.10.4' \ 
    && conda clean --all --yes
