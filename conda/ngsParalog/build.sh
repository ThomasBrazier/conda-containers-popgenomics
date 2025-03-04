#! /bin/bash

cd $PREFIX/bin
wget https://github.com/tplinderoth/ngsParalog/releases/download/v1.3.3/ngsparalog_1.3.3.tar.gz && \
tar -xzvf ngsparalog_1.3.3.tar.gz
PATH="$PREFIX/bin/ngsparalog:$PATH"