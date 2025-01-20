#! /bin/bash

conda env create --force -f relernn.yaml

conda activate relernn

pip install --upgrade pip
export TMPDIR=/home/$USER/tmp
pip install -U setuptools wheel
pip install tensorflow==2.12

python3 -c "import tensorflow as tf; print(tf.reduce_sum(tf.random.normal([1000, 1000])))"
python3 -c "import tensorflow as tf; print(tf.config.list_physical_devices('GPU'))"

pip install git+https://github.com/kr-colab/ReLERNN.git



conda deactivate