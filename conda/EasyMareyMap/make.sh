# download EasyMareyMap .tar.gz

conda skeleton cran r-easymareymap

cd r-easymareymap

conda build -c conda-forge -c bioconda . --output > conda_path

anaconda upload $(cat conda_path)

conda build purge
