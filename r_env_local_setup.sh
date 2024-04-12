#!/bin/bash
#Approximate list of requirements after conda is already installed
conda create --name r_seurat -c conda-forge -c bioconda r-seurat=4* -y
conda activate r_seurat
conda install -c conda-forge jupyterlab r-lme4 -y #r-lme4 installs r-nloptr requirements
R -e "install.packages('BiocManager', repos='http://lib.stat.cmu.edu/R/CRAN/')"
R -e "install.packages('ggplot2', repos='http://lib.stat.cmu.edu/R/CRAN/')" 
R -e "install.packages('dplyr', repos='http://lib.stat.cmu.edu/R/CRAN/')" 
R -e "install.packages('ggpubr' ,repos='http://lib.stat.cmu.edu/R/CRAN/')" 
R -e "install.packages('patchwork', repos='http://lib.stat.cmu.edu/R/CRAN/')" 
R -e "install.packages('hdf5r', repos='http://lib.stat.cmu.edu/R/CRAN/')" 
R -e "install.packages('remotes', repos='http://lib.stat.cmu.edu/R/CRAN/')" 
R -e "install.packages('IRkernel', repos='http://lib.stat.cmu.edu/R/CRAN/')" 
R -e "install.packages('pheatmap', repos='http://lib.stat.cmu.edu/R/CRAN/')" 
R -e "install.packages('readxl', repos='http://lib.stat.cmu.edu/R/CRAN/')"
R -e "install.packages('openxlsx', repos='http://lib.stat.cmu.edu/R/CRAN/')"

# Bioconductor installs
R -e "BiocManager::install('SingleCellExperiment')"
R -e "BiocManager::install('scRNAseq')"
R -e "BiocManager::install('edgeR')"
R -e "BiocManager::install('SingleR')"
R -e "BiocManager::install('limma')"
R -e "BiocManager::install('SpatialDecon')"

# Set up IR Kernel for use w/ jupyter
R -e "IRkernel::installspec(name = 'r_seurat' , displayname = 'R 4 with seurat')" 


