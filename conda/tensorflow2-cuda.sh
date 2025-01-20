#! /bin/bash

lspci | grep -i nvidia

nvidia-smi

sudo apt install nvidia-cuda-toolkit

conda env create -f tensorflow2-cuda.yaml

conda activate tf
pip install --upgrade pip
export TMPDIR=/home/$USER/tmp
pip install -U setuptools wheel
pip install tensorflow==2.12

python3 -c "import tensorflow as tf; print(tf.reduce_sum(tf.random.normal([1000, 1000])))"
python3 -c "import tensorflow as tf; print(tf.config.list_physical_devices('GPU'))"

conda deactivate
