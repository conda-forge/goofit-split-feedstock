#!/usr/bin/env bash
set -evx

export MAKEFLAGS="-j${CPU_COUNT}"
export GOOFIT_DEVICE=OMP
export GOOFIT_OPTI="-march=nocona;-mtune=haswell;-ftree-vectorize"

rm pyproject.toml || echo "Already removed pyproject file"
VERBOSE=1 $PYTHON -m pip install --no-deps --ignore-installed -v .
