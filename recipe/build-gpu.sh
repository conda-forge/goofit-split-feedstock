#!/usr/bin/env bash
set -evx

export MAKEFLAGS="-j${CPU_COUNT}"
export GOOFIT_DEVICE=CUDA
export GOOFIT_ARCH="3.0;5.0;6.0;7.0+PTX"
export GOOFIT_OPTI="-march=nocona;-mtune=haswell;-ftree-vectorize"

rm pyproject.toml || echo "Already removed pyproject file"
VERBOSE=1 $PYTHON -m pip install --no-deps --ignore-installed -v .
